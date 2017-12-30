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
Adafruit_NeoPixel strip = Adafruit_NeoPixel(1, 17, NEO_GRB + NEO_KHZ800);

// IMPORTANT: To reduce NeoPixel burnout risk, add 1000 uF capacitor across
// pixel power leads, add 300 - 500 Ohm resistor on first pixel's currentEncoderData input
// and minimize distance between Arduino and first pixel.  Avoid connecting
// on a live circuit...if you must, connect GND first.

// Holds previous currentEncoderData read from encoder port
volatile byte lastEncoderData = 0x00;
// Shift register for decoding quadrature transitions in lower 4 bits
volatile byte encoderDataRegister = 0x00;

volatile byte encoderValue = 0;

void setup() {
  pinMode(14, INPUT);   // Pushbutton
  pinMode(15, INPUT);   // Encoder A
  pinMode(16, INPUT);   // Encoder B
  pinMode(17, OUTPUT);  // WS2811 data

  Serial.begin(230400);

  // Enable pin change interrupts on 14-16
  *digitalPinToPCMSK(14) |= bit (digitalPinToPCMSKbit(14));  // enable pin
  *digitalPinToPCMSK(15) |= bit (digitalPinToPCMSKbit(15));  // enable pin
  *digitalPinToPCMSK(16) |= bit (digitalPinToPCMSKbit(16));  // enable pin
  PCIFR  |= bit (digitalPinToPCICRbit(14)); // clear any outstanding interrupt
  PCICR  |= bit (digitalPinToPCICRbit(14)); // enable interrupt for the group
  
  // Commence Neopixeling
  strip.begin();
  strip.show(); // Initialize all pixels to 'off'

  // Get initial state of encoder bits
  lastEncoderData = PINC & 0x06;
  encoderDataRegister = (lastEncoderData) >> 1;
}

void loop() {
  // Some example procedures showing how to display to the pixels:
  //colorWipe(strip.Color(255, 0, 0), 16); // Red
  // colorWipe(strip.Color(0, 255, 0), 16); // Green
  // colorWipe(strip.Color(0, 0, 255), 17); // Blue
  // colorWipe(strip.Color(127, 0, 127), 16); //Purple
  // rainbow(20);
  // rainbowCycle(20);
  strip.setPixelColor(0, Wheel(encoderValue));
  strip.show();
}

// Pin change interrupt for PORT C: Button was pressed/released, or
// the encoder was rotated.
ISR(PCINT1_vect)
{
  static int newlinecountdown = 100;

  // Get current data
  byte currentEncoderData = PINC & 0x07;
  byte diff = currentEncoderData ^ lastEncoderData;

  // Did pushbutton bit change?
  if (diff & 0x01) {
    // Up or down?
    if (currentEncoderData & 0x01)
      Serial.print('D');  // Down
    else
      Serial.print('U');  // Up
  }

  // Did rotary bits change?
  if (diff & 0x06) {
    // Read two quadrature bits and shift into register.  Keep prior two bits; mask off the rest
    byte encBits = (PINC & 0x06) >> 1;
    encoderDataRegister = ((encoderDataRegister << 2) | encBits ) & 0x0f;

    // Figure out what happened.
    switch (encoderDataRegister) {
      // Clockwise cases:
      case 0x01:  // 00 -> 01
      case 0x07:  // 01 -> 11
      case 0x0e:  // 11 -> 10
      case 0x08:  // 10 -> 00
        Serial.print('>');
        if (encBits & 0x01) {
          encoderValue++;
          //Serial.print(encoderValue);
        }
        break;

      // Counterclockwise cases:
      case 0x0b:  // 10 -> 11
      case 0x0d:  // 11 -> 01
      case 0x04:  // 01 -> 00
      case 0x02:  // 00 -> 10
        Serial.print('<');
        if (encBits & 0x01) {
          encoderValue--;
          //Serial.print(encoderValue);
        }
        break;

      // Other cases are invalid. Ignore.
      default:
        Serial.print('-');
        break;
    } 
  }

  lastEncoderData = currentEncoderData;

  if (--newlinecountdown == 0) {
    Serial.println();
    newlinecountdown = 100;
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
