/*
 * ui.h
 *
 *  Created on: 17.11.2015
 *      Author: cybaer
 */

#include "HardwareConfig.h"

using namespace avrlib;

class Ui
{
public:
  Ui(void);
  void init(void);
  void poll(void);
  void doEvents(void);

private:
  void testSwitchLED(void);
  bool isScanMode(void);

  class IUiState;

  LedRow_1 m_LedRow_1;
  LedRow_2 m_LedRow_2;
  LedRow_3 m_LedRow_3;
  LedRow_4 m_LedRow_4;
  LEDGroupBase* m_LedRows[4];

  LED_17  led17;
  //LED_16  led16;

  SwitchRow_1 m_SwitchRow_1;
  SwitchRow_2 m_SwitchRow_2;
  SwitchRow_3 m_SwitchRow_3;
  SwitchRow_4 m_SwitchRow_4;
  SwitchGroupBase* m_SwitchRows[4];

  Display m_Display;


  /*
  LEDArray m_InputLEDs;
  SwitchArray m_InputSwitches;
  LEDArray m_OutputLEDs;
  SwitchArray m_OutputSwitches;
  LEDArray m_ModeLEDs;
  SwitchArray m_ModeSwitches;
*/

  class IUiState
  {
  public:
    //** Empty Constructor */
    IUiState(void) {}
    virtual void onEntry(Ui&) const {}
    virtual void onExit(Ui&) const {}
    virtual void onClick(Ui&, int8_t row, int8_t index) const {}

  private:
    /** Forbidden */
    DISALLOW_COPY_AND_ASSIGN (IUiState);
  };

  /**
   * State machine
   */
  class CXYState: public IUiState
  {
  public:
    static CXYState& getInstance(void)
    {
      static CXYState s_instance;
      return s_instance;
    }
    virtual void onEntry(Ui&) const;
    virtual void onModeClick(Ui&, int8_t index) const;
  };

  void setState(IUiState& state)
  {
    m_State->onExit(*this);
    m_State = &state;
    m_State->onEntry(*this);
  }

  IUiState* m_State;
};

static Ui ui;

