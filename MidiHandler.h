/*
 * MidiHandler.h
 *
 *  Created on: 15.09.2015
 *      Author: cybaer
 */

#ifndef MIDIHANDLER_H_
#define MIDIHANDLER_H_

#include "lib/midi/midi.h"


//extern CPingOmat ping;
//extern Ui ui;

  struct MidiHandler : public midi::MidiDevice
  {
    static void NoteOn(uint8_t channel, uint8_t note, uint8_t velocity)
    {
      //ping.OnNoteOn(channel, note, velocity);
    }

    static void NoteOff(uint8_t channel, uint8_t note, uint8_t velocity)
    {
       //ping.OnNoteOff(channel, note, velocity);
    }

    static void Clock()
    {
      //Ui.OnClock();
//      sequencer.tick();
    }
    static void Start()
    {
//      sequencer.start();
    }
    static void Stop()
    {
//      sequencer.stop();
    }
  };

#endif /* MIDIHANDLER_H_ */
