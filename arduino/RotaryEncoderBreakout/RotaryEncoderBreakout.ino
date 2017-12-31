// This demonstrates using the pin change interrupt to react to rotating
// the control and pressing the button. The pushbutton and the two phases
// of the encoder are all connected to port C. A bit change on any of those
// pins will invoke the port C pin change ISR, whose job is to sample the
// new values, and compare to the old values to figure out what happened.
//
// The ISR sends output to the serial port for viewing with the Serial Monitor.
//
// The main processing loop uses the Adafruit Neopixel library to continually
// change the color of the pixel. Operating the control does not affect the
// pixel behavior.
// 
// Pin assignments:
//
// Encoder pushbutton, PORTC bit 0
#define PUSHBUTTON_PIN 14
// Encoder phase A, PORTC bit 1
#define PHASEA_PIN 15
// Encoder phase B, PORTC bit 2
#define PHASEB_PIN 16
// Data out to WS2811, PORTC bit 3
#define LED_PIN 17

#include <Adafruit_NeoPixel.h>
#ifdef __AVR__
  #include <avr/power.h>
#endif

// Parameter 1 = number of pixels in strip
// Parameter 2 = Arduino pin number (most are valid)
// Parameter 3 = pixel type flags, add together as needed:
//   NEO_KHZ800  800 KHz bitstream (most NeoPixel products w/WS2812 LEDs)
//   NEO_KHZ400  400 KHz (classic 'v1' (not v2) FLORA pixels, WS2811 drivers)
//   NEO_GRB     Pixels are wired for GRB bitstream (most NeoPixel products)
//   NEO_RGB     Pixels are wired for RGB bitstream (v1 FLORA pixels, not v2)
//   NEO_RGBW    Pixels are wired for RGBW bitstream (NeoPixel RGBW products)
Adafruit_NeoPixel strip = Adafruit_NeoPixel(1, LED_PIN, NEO_GRB + NEO_KHZ400);

// Rotating clockwise will increase value; counterclockwise will decrease it.
volatile byte encoderValue = 0;

void setup() {
  pinMode(PUSHBUTTON_PIN, INPUT);
  pinMode(PHASEA_PIN, INPUT);
  pinMode(PHASEB_PIN, INPUT);
  pinMode(LED_PIN, OUTPUT);

  Serial.begin(230400);

  // Enable pin change interrupts
  *digitalPinToPCMSK(PUSHBUTTON_PIN) |= bit (digitalPinToPCMSKbit(14));  // enable pin
  *digitalPinToPCMSK(PHASEA_PIN) |= bit (digitalPinToPCMSKbit(15));  // enable pin
  *digitalPinToPCMSK(PHASEB_PIN) |= bit (digitalPinToPCMSKbit(16));  // enable pin

  // Clear outstanding interrupts and enable. Only necessary to reference one
  // pin since all configured pins generate the same interrupt.
  PCIFR  |= bit (digitalPinToPCICRbit(PUSHBUTTON_PIN));
  PCICR  |= bit (digitalPinToPCICRbit(PUSHBUTTON_PIN));
  
  // Commence Neopixeling
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'

}

void loop() {
  // Some example procedures showing how to display to the pixels:
  colorWipe(strip.Color(255, 0, 0), 16); // Red
  colorWipe(strip.Color(0, 255, 0), 16); // Green
  colorWipe(strip.Color(0, 0, 255), 17); // Blue
  colorWipe(strip.Color(127, 0, 127), 16); //Purple
  rainbow(20);
  rainbowCycle(20);
}

// Pin change interrupt for PORT C: Button was pressed/released, or
// the encoder was rotated.
// One click of the wheel cycles through all four states of the quadrature
// encoding, and this ISR is invoked four times. The variable encoderValue
// is only incremented or decremented once per click.
ISR(PCINT1_vect)
{
  // Holds previous currentEncoderData read from encoder port
  static byte lastEncoderData = 0x00;
  // Shift register for decoding quadrature transitions in lower 4 bits
  static byte quadratureRegister = 0x00;

  // Helps with cleaner output on the serial port, by adding a newline
  // at intervals.
  static int newlineCountdown = 80;

  // Get current data on PORTC bits 0-2; mask off the rest.
  byte currentEncoderData = PINC & 0x07;

  // Figure out what changed
  byte diff = currentEncoderData ^ lastEncoderData;

  // Did pushbutton bit change?
  if (diff & 0x01) {
    // Up or down?
    if (currentEncoderData & 0x01)
      Serial.print('D');  // Down
    else
      Serial.print('U');  // Up
  }

  // Did quadrature bits change?
  if (diff & 0x06) {
    // Shift prior quadrature bits left, and read current bits in; mask off the rest
    byte encBits = (PINC & 0x06) >> 1;
    quadratureRegister = ((quadratureRegister << 2) | encBits ) & 0x0f;

    // Figure out what happened.
    switch (quadratureRegister) {
      // Clockwise cases:
      case 0x01:  // 00 -> 01
      case 0x07:  // 01 -> 11
      case 0x0e:  // 11 -> 10
      case 0x08:  // 10 -> 00
        Serial.print('>');

        // Only increment value 1 time out of 4
        if ((encBits & 0x03) == 0x03) {
          encoderValue++;
          Serial.print(encoderValue);
        }
        break;

      // Counterclockwise cases:
      case 0x0b:  // 10 -> 11
      case 0x0d:  // 11 -> 01
      case 0x04:  // 01 -> 00
      case 0x02:  // 00 -> 10
        Serial.print('<');

        // Only decrement the value 1 time out of 4
        if ((encBits & 0x03) == 0x03) {
          encoderValue--;
          Serial.print(encoderValue);
        }
        break;

      // Other cases are invalid. Ignore.
      default:
        Serial.print('-');
        break;
    } 
  }

  // Remember this state for next time through.
  lastEncoderData = currentEncoderData;

  // Time for a newline?
  if (--newlineCountdown == 0) {
    Serial.println();
    newlineCountdown = 80;
  }
}

// These are from the NeoPixel demo library

// Fill the dots one after the other with a color
void colorWipe(uint32_t c, uint8_t wait) {
  for(uint16_t i=0; i<strip.numPixels(); i++) {
    strip.setPixelColor(i, c);
    strip.show();
    delay(wait);
    strip.setPixelColor(i, 0);
  }
}

void rainbow(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256; j++) {
    for(i=0; i<strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel((i+j) & 255));
    }
    strip.show();
    delay(wait);
  }
}

// Slightly different, this makes the rainbow equally distributed throughout
void rainbowCycle(uint8_t wait) {
  uint16_t i, j;

  for(j=0; j<256*5; j++) { // 5 cycles of all colors on wheel
    for(i=0; i< strip.numPixels(); i++) {
      strip.setPixelColor(i, Wheel(((i * 256 / strip.numPixels()) + j) & 255));
    }
    strip.show();
    delay(wait);
  }
}


// Input a value 0 to 255 to get a color value.
// The colours are a transition r - g - b - back to r.
uint32_t Wheel(byte WheelPos) {
  WheelPos = 255 - WheelPos;
  if(WheelPos < 85) {
    return strip.Color(255 - WheelPos * 3, 0, WheelPos * 3);
  }
  if(WheelPos < 170) {
    WheelPos -= 85;
    return strip.Color(0, WheelPos * 3, 255 - WheelPos * 3);
  }
  WheelPos -= 170;
  return strip.Color(WheelPos * 3, 255 - WheelPos * 3, 0);
}
