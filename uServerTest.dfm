object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'ServerTest'
  ClientHeight = 340
  ClientWidth = 649
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Set Dialog'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Connect'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 170
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Disconnect'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 39
    Width = 313
    Height = 293
    TabOrder = 3
  end
  object Memo2: TMemo
    Left = 327
    Top = 39
    Width = 313
    Height = 293
    TabOrder = 4
  end
  object Button4: TButton
    Left = 251
    Top = 8
    Width = 86
    Height = 25
    Caption = 'Connect Server'
    TabOrder = 5
  end
  object Button5: TButton
    Left = 343
    Top = 8
    Width = 86
    Height = 25
    Caption = 'Listen Server'
    TabOrder = 6
  end
  object ComPort1: TComPort
    BaudRate = br9600
    Port = 'COM1'
    Parity.Bits = prNone
    StopBits = sbOneStopBit
    DataBits = dbEight
    Events = [evRxChar, evTxEmpty, evRxFlag, evRing, evBreak, evCTS, evDSR, evError, evRLSD, evRx80Full]
    FlowControl.OutCTSFlow = False
    FlowControl.OutDSRFlow = False
    FlowControl.ControlDTR = dtrDisable
    FlowControl.ControlRTS = rtsDisable
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    StoredProps = [spBasic]
    TriggersOnRxChar = True
    OnRxChar = ComPort1RxChar
    Left = 256
    Top = 184
  end
  object IdTCPClient1: TIdTCPClient
    ConnectTimeout = 0
    IPVersion = Id_IPv4
    Port = 0
    ReadTimeout = -1
    Left = 408
    Top = 160
  end
end
