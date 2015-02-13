object Form1: TForm1
  Left = 164
  Top = 181
  Width = 852
  Height = 501
  Caption = 'Electrical Scheme'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  DesignSize = (
    836
    443)
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 88
    Top = -8
    Width = 745
    Height = 449
    OnMouseDown = Image1MouseDown
    OnMouseUp = Image1MouseUp
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 89
    Height = 443
    Anchors = [akLeft, akTop, akBottom]
    Color = clGradientActiveCaption
    TabOrder = 0
    object ResistorSpB: TSpeedButton
      Left = 24
      Top = 18
      Width = 35
      Height = 35
      Hint = 'Resistor'
      Flat = True
      Glyph.Data = {
        6A000000424D6A000000000000003E000000280000001F0000000B0000000100
        0100000000002C0000000000000000000000020000000000000000000000FFFF
        FF00FFFFFFFEF000001EF7FFFFDEF7FFFFDEF7FFFFDE87FFFFC287FFFFC2F7FF
        FFDEF7FFFFDEF000001EFFFFFFFE}
      ParentShowHint = False
      PopupMenu = PopupMenuResistor
      ShowHint = True
      OnClick = ResistorSpBClick
    end
    object DiodeSpB: TSpeedButton
      Left = 24
      Top = 65
      Width = 35
      Height = 35
      Hint = 'Diode'
      Flat = True
      Glyph.Data = {
        9E000000424D9E000000000000003E000000280000001E000000180000000100
        010000000000600000000000000000000000020000000000000000000000FFFF
        FF00FFFFFFFCFFFFFE7CFFCFFE7CFFC7FE7CFFC1FE7CFFC87E7CFFCC3E7CFFCF
        0E7CFFCFC67CFFCFE27CFFCFF07CE00FFC04FFCFF07CFFCFE27CFFCFC67CFFCF
        0E7CFFCC3E7CFFC87E7CFFC1FE7CFFC7FE7CFFCFFE7CFFFFFE7CFFFFFFFCFFFF
        FFFC}
      ParentShowHint = False
      PopupMenu = PopupMenuDiode
      ShowHint = True
      OnClick = DiodeSpBClick
    end
    object CoilSpB: TSpeedButton
      Left = 24
      Top = 113
      Width = 35
      Height = 35
      Hint = 'Coil'
      Flat = True
      Glyph.Data = {
        4E000000424D4E000000000000003E000000280000001E000000040000000100
        010000000000100000000000000000000000020000000000000000000000FFFF
        FF0081E79F00F9C38E7CFC00007CFE1871FC}
      ParentShowHint = False
      PopupMenu = PopupMenuCoil
      ShowHint = True
      OnClick = CoilSpBClick
    end
    object SplintSpB: TSpeedButton
      Left = 24
      Top = 161
      Width = 35
      Height = 35
      Hint = 'Connection'
      Flat = True
      Glyph.Data = {
        76000000424D76000000000000003E0000002800000022000000070000000100
        010000000000380000000000000000000000020000000000000000000000FFFF
        FF00FFFFFFFFC0000000FFFFFFFFC0000000FFFFFFFFC000000080000001C000
        000080000001C0000000FFFFFFFFC0000000FFFFFFFFC0000000}
      ParentShowHint = False
      ShowHint = True
      OnClick = SplintSpBClick
    end
    object DotSpB: TSpeedButton
      Left = 24
      Top = 208
      Width = 35
      Height = 35
      Hint = 'Dot'
      Flat = True
      Glyph.Data = {
        C6000000424DC6000000000000003E0000002800000016000000220000000100
        010000000000880000000000000000000000020000000000000000000000FFFF
        FF00FFFFFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7F
        FC00FE7FFC00FE7FFC00FC7FFC00F83FFC00F00FFC00E007FC00C007FC00C003
        FC00C0000400C0000400C007FC00C007FC00E00FFC00F01FFC00FC7FFC00FE7F
        FC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7FFC00FE7F
        FC00FE7FFC00FFFFFC00}
      ParentShowHint = False
      ShowHint = True
      OnClick = DotSpBClick
    end
    object TextSpB: TSpeedButton
      Left = 24
      Top = 256
      Width = 35
      Height = 35
      Hint = 'Text'
      Flat = True
      Glyph.Data = {
        36080000424D3608000000000000360400002800000020000000200000000100
        0800000000000004000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        00FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF
        00FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF
        00FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFF
        0A00000000000000000000000000000000000040FFFFFFFFFFFFFFFFFFFFFFFF
        0A00000000000000000000000000000000000040FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ParentShowHint = False
      ShowHint = True
      OnClick = TextSpBClick
    end
    object ColorPanel: TPanel
      Left = 24
      Top = 303
      Width = 35
      Height = 35
      Hint = 'Color'
      BevelOuter = bvNone
      Color = clBlack
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ColorPanelClick
    end
  end
  object MainMenu1: TMainMenu
    Top = 408
    object F1: TMenuItem
      Caption = 'File'
      object MenuNew: TMenuItem
        Caption = 'New'
        ShortCut = 16462
        OnClick = MenuNewClick
      end
      object MenuOpen: TMenuItem
        Caption = 'Open'
        ShortCut = 16463
        OnClick = MenuOpenClick
      end
      object MenuSave: TMenuItem
        Caption = 'Save'
        ShortCut = 16467
        OnClick = MenuSaveClick
      end
      object MenuSaveAs: TMenuItem
        Caption = 'Save As...'
        OnClick = MenuSaveAsClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object MenuExit: TMenuItem
        Caption = 'Exit'
        ShortCut = 16465
        OnClick = MenuExitClick
      end
    end
    object About1: TMenuItem
      Caption = 'About'
      ShortCut = 112
      OnClick = About1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 29
    Top = 408
  end
  object SaveDialog1: TSaveDialog
    Top = 381
  end
  object ColorDialog1: TColorDialog
    Left = 56
    Top = 408
  end
  object PopupMenuResistor: TPopupMenu
    OnChange = PopupMenuResistorChange
    Left = 62
    Top = 24
    object VerticalResistor1: TMenuItem
      Bitmap.Data = {
        BA000000424DBA000000000000003E000000280000000B0000001F0000000100
        0100000000007C000000C40E0000C40E0000020000000200000000000000FFFF
        FF00FFE00000F3E00000F3E00000F3E0000080200000BFA00000BFA00000BFA0
        0000BFA00000BFA00000BFA00000BFA00000BFA00000BFA00000BFA00000BFA0
        0000BFA00000BFA00000BFA00000BFA00000BFA00000BFA00000BFA00000BFA0
        0000BFA00000BFA0000080200000F3E00000F3E00000F3E00000FFE00000}
      Caption = 'Vertical Resistor'
    end
  end
  object PopupMenuDiode: TPopupMenu
    Left = 62
    Top = 71
    object DvUp: TMenuItem
      Bitmap.Data = {
        B6000000424DB6000000000000003E00000028000000180000001E0000000100
        01000000000078000000C40E0000C40E0000020000000200000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFF7FF00FFF7FF00FFF7FF00FFF7FF00FFF7
        FF00FFF7FF00FFF7FF00E0000300E0000300F3FFE700F9FFCF00F8FF8F00FCFF
        9F00FC7F1F00FE7F3F00FF3E7F00FF1C7F00FF88FF00FFC9FF00FFE3FF00C000
        0100C0000100FFF7FF00FFF7FF00FFF7FF00FFF7FF00FFFFFF00}
      Caption = '+ 90'
      OnClick = DvUpClick
    end
    object DhLeft: TMenuItem
      Bitmap.Data = {
        9E000000424D9E000000000000003E000000280000001E000000180000000100
        01000000000060000000C40E0000C40E0000020000000200000000000000FFFF
        FF00FFFFFFFCFFFFFFFCF9FFFFFCF9FFCFFCF9FF8FFCF9FE0FFCF9F84FFCF9F0
        CFFCF9C3CFFCF98FCFFCF91FCFFCF83FCFFC80FFC01CF83FCFFCF91FCFFCF98F
        CFFCF9C3CFFCF9F0CFFCF9F84FFCF9FE0FFCF9FF8FFCF9FFCFFCF9FFFFFCFFFF
        FFFC}
      Caption = '+ 180'
      OnClick = DhLeftClick
    end
    object DvDown: TMenuItem
      Bitmap.Data = {
        B6000000424DB6000000000000003E00000028000000180000001E0000000100
        01000000000078000000C40E0000C40E0000020000000200000000000000FFFF
        FF00FFFFFF00FFEFFF00FFEFFF00FFEFFF00FFEFFF008000030080000300FFC7
        FF00FF93FF00FF11FF00FE38FF00FE7CFF00FCFE7F00F8FE3F00F9FF3F00F1FF
        1F00F3FF9F00E7FFCF00C0000700C0000700FFEFFF00FFEFFF00FFEFFF00FFEF
        FF00FFEFFF00FFEFFF00FFEFFF00FFFFFF00FFFFFF00FFFFFF00}
      Caption = '- 90'
      OnClick = DvDownClick
    end
  end
  object PopupMenuCoil: TPopupMenu
    Left = 60
    Top = 119
    object CvL: TMenuItem
      Bitmap.Data = {
        B6000000424DB6000000000000003E00000028000000040000001E0000000100
        01000000000078000000C40E0000C40E0000020000000200000000000000FFFF
        FF00F0000000E0000000E0000000E0000000E0000000C0000000800000003000
        0000300000003000000010000000800000008000000010000000300000003000
        0000300000008000000080000000900000003000000030000000300000009000
        000080000000E0000000E0000000E0000000E0000000E0000000}
      Caption = '+ 90'
      OnClick = CvLClick
    end
    object ChD: TMenuItem
      Bitmap.Data = {
        4E000000424D4E000000000000003E000000280000001E000000040000000100
        01000000000010000000C40E0000C40E0000020000000200000000000000FFFF
        FF00FE3861FCF80000FCF9C70E7C03E79E04}
      Caption = '+ 180'
      OnClick = ChDClick
    end
    object CvR: TMenuItem
      Bitmap.Data = {
        B6000000424DB6000000000000003E00000028000000040000001E0000000100
        01000000000078000000C40E0000C40E0000020000000200000000000000FFFF
        FF0070000000700000007000000070000000700000001000000090000000C000
        0000C0000000C0000000900000001000000010000000C0000000C0000000C000
        000080000000100000001000000080000000C0000000C0000000C00000001000
        00003000000070000000700000007000000070000000F0000000}
      Caption = '- 90'
      OnClick = CvRClick
    end
  end
end
