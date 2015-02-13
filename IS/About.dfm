object AboutForm: TAboutForm
  Left = 192
  Top = 124
  Width = 505
  Height = 206
  Caption = 'About'
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 457
    Height = 16
    Caption = 
      'Made by Shteryana Krasteva, Computer Science in University of Ru' +
      'se, 2013'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object CloseButton: TButton
    Left = 207
    Top = 112
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 0
    OnClick = CloseButtonClick
  end
end
