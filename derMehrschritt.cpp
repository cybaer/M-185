/*
 * derMehrschritt.cpp
 *
 *  Created on: 13.09.2015
 *      Author: cybaer
 */


#include <avr/interrupt.h>      // Header-Datei f. Interruptfunktion
#include "avrlib/time.h"
//#include "avrlib/spi.h"
//#include "avrlib/gpio.h"
//#include "avrlib/serial.h"
//
#include "avrlib/devices/bicolor_led_group.h"
#include "HardwareConfig.h"
#include "lib/midi/midi.h"
#include "MidiHandler.h"
#include "ui.h"
#include <limits.h>
// __Compiler Bug__
int __cxa_guard_acquire(__guard *g) {return !*(char *)(g);};
void __cxa_guard_release (__guard *g) {*(char *)g = 1;};
void __cxa_guard_abort (__guard *) {};
void __cxa_pure_virtual() {};

using namespace avrlib;
using namespace midi;
// Midi input.
Serial<MidiPort, 31250, POLLED, POLLED> midi_io;
MidiStreamParser<MidiHandler> midiParser;

volatile bool poll = false;

ISR(TIMER2_OVF_vect, ISR_NOBLOCK)
{ //ca 4kHz
ui.OnClock();
  static int8_t subClock = 0;
  subClock = (subClock + 1) & 3;

  if (subClock == 0)
  { // 1kHz
    //Debug1::Toggle();
    poll = true;
  }
}


void setNoteValue(uint8_t note)
{
  uint16_t volts = note;
  volts <<= 5;
  //dac.Write(volts, 0);
  //dac.Write(volts, 1);
}


int main(void)
{
  sei();

  _delay_ms(50);
  Debug1::set_mode(DIGITAL_OUTPUT);
  Debug1::set_value(false);
  midi_io.Init();
  spi_master::Init();
  //dac.Init();
  //_delay_ms(2000);
  _delay_ms(200);


  ui.init();

  //testOut3.set_mode(DIGITAL_OUTPUT);
  //testOut4.set_mode(DIGITAL_OUTPUT);
  portExtenders<AllExtender>::Init();

  _delay_ms(50);
 // testOut1.set();
 // testOut2.clear();



  portExtenders<AllExtender>::WriteIO();

  // Configure the timers.
/*    Timer<1>::set_prescaler(1);
    Timer<1>::set_mode(0, _BV(WGM12), 3);
    PwmChannel1A::set_frequency(6510);
    Timer<1>::StartCompare();
*/
    Timer<2>::set_prescaler(2);
    Timer<2>::set_mode(TIMER_PWM_PHASE_CORRECT);
    Timer<2>::Start();


  while(1)
  {
    /*if (midi_io.readable())
    {
      uint8_t byte = midi_io.ImmediateRead();
      if (byte != 0xfe)
      {
        Debug1::High();
        midiParser.PushByte(byte);
      }
    }*/
    //_delay_ms(1);

    //if(x > 127) {x = 1; y=1;}
    //Display.drawPixel(x+=2,y++,1);
    //Display.display();

    //if(y > 60) Display.clear();

    if(poll)
    {
      poll = false;
    Debug1::Low();
    portExtenders<AllExtender>::ReadIO();
    //Debug1::Low();
    ui.poll();

    ui.doEvents();

    portExtenders<AllExtender>::WriteIO();
    }



  }
}