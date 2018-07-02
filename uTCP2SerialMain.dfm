object Form2: TForm2
  Left = 0
  Top = 0
  Margins.Left = 5
  Margins.Right = 5
  Caption = 'TCP to Serial'
  ClientHeight = 485
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 55
    Width = 647
    Height = 106
    Margins.Left = 5
    Margins.Right = 5
    Align = alTop
    Caption = 'Server'
    TabOrder = 0
    object cbServerServiceIP: TComboBox
      Left = 69
      Top = 17
      Width = 145
      Height = 21
      TabOrder = 0
    end
    object StaticText1: TStaticText
      Left = 11
      Top = 21
      Width = 52
      Height = 17
      Caption = 'Service IP'
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      AlignWithMargins = True
      Left = 233
      Top = 18
      Width = 70
      Height = 83
      Align = alRight
      Alignment = taLeftJustify
      Caption = 'Using ABD?'
      TabOrder = 2
    end
    object GroupBox3: TGroupBox
      AlignWithMargins = True
      Left = 309
      Top = 15
      Width = 333
      Height = 86
      Margins.Top = 0
      Align = alRight
      Caption = 'ABD'
      TabOrder = 3
      object RadioGroup2: TRadioGroup
        AlignWithMargins = True
        Left = 5
        Top = 18
        Width = 323
        Height = 34
        Align = alTop
        Caption = 'Type'
        Columns = 2
        Items.Strings = (
          'Called Me'
          'Called Device')
        TabOrder = 0
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 5
        Top = 58
        Width = 323
        Height = 26
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object StaticText2: TStaticText
          Left = 3
          Top = 8
          Width = 21
          Height = 17
          Caption = 'Call'
          TabOrder = 0
        end
        object Edit1: TEdit
          Left = 30
          Top = 3
          Width = 121
          Height = 21
          TabOrder = 1
        end
      end
    end
    object StaticText3: TStaticText
      Left = 11
      Top = 47
      Width = 59
      Height = 17
      Caption = 'ServicePort'
      TabOrder = 4
    end
    object edtServerPort: TEdit
      Left = 69
      Top = 44
      Width = 121
      Height = 21
      TabOrder = 5
      Text = '27490'
    end
  end
  object GroupBox2: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 167
    Width = 647
    Height = 147
    Margins.Left = 5
    Margins.Right = 5
    Align = alTop
    Caption = 'Client'
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    AlignWithMargins = True
    Left = 5
    Top = 3
    Width = 647
    Height = 46
    Margins.Left = 5
    Margins.Right = 5
    Align = alTop
    Caption = 'Type'
    Columns = 2
    Items.Strings = (
      'Server'
      'Client')
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = -16
  end
  object GroupBox4: TGroupBox
    AlignWithMargins = True
    Left = 5
    Top = 320
    Width = 647
    Height = 105
    Margins.Left = 5
    Margins.Right = 5
    Align = alTop
    Caption = 'GroupBox4'
    TabOrder = 3
    ExplicitLeft = 208
    ExplicitWidth = 185
    object btnRun: TButton
      Left = 3
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Run'
      TabOrder = 0
    end
    object btnStop: TButton
      Left = 84
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Stop'
      TabOrder = 1
    end
  end
end
