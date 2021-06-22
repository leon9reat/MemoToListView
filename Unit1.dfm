object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 228
  ClientWidth = 581
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
  object Memo1: TMemo
    Left = 24
    Top = 8
    Width = 193
    Height = 179
    Lines.Strings = (
      'aldy,1035,22445'
      'rio,6372,4567'
      'reza,3335,64732')
    TabOrder = 0
  end
  object ListView1: TListView
    Left = 231
    Top = 8
    Width = 331
    Height = 179
    Columns = <
      item
        Caption = 'Nama'
        Width = 100
      end
      item
        Caption = 'Nilai 1'
      end
      item
        Caption = 'Nilai 2'
      end>
    Items.ItemData = {
      05940000000300000000000000FFFFFFFFFFFFFFFF02000000FFFFFFFF000000
      000161000163002811CE2E0164007812CE2E00000000FFFFFFFFFFFFFFFF0000
      0000FFFFFFFF0000000001620000000000FFFFFFFFFFFFFFFF04000000FFFFFF
      FF0000000002610062000264006300E00DCE2E02780078006011CE2E02740074
      00F010CE2E02660066001010CE2EFFFFFFFFFFFFFFFFFFFFFFFF}
    TabOrder = 1
    ViewStyle = vsReport
  end
  object btnProses: TButton
    Left = 142
    Top = 193
    Width = 75
    Height = 25
    Caption = 'Proses'
    TabOrder = 2
    OnClick = btnProsesClick
  end
end
