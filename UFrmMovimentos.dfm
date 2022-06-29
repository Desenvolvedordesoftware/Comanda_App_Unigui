object FrmMovimentosForm: TFrmMovimentosForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Movimentos'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object btVenda: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 314
    Height = 50
    Hint = ''
    Align = alTop
    Caption = '<i class="fas fa-dolly-flatbed fa-50"></i>PEDIDO-VENDA'
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
        'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
    UI = 'round'
    Font.Color = clWhite
    Font.Height = -15
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'bntEstoque'
    OnClick = btVendaClick
  end
  object btSair: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 427
    Width = 314
    Height = 50
    Hint = ''
    Align = alBottom
    Caption = 'SAIR'
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
        'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
    UI = 'round'
    Font.Color = clWhite
    Font.Height = -15
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'bntLogin'
    OnClick = btSairClick
    ExplicitLeft = -8
  end
end
