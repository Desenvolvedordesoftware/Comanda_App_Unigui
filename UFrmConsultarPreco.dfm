object ConsultarPrecoForm: TConsultarPrecoForm
  Left = 0
  Top = 0
  ClientHeight = 480
  ClientWidth = 320
  Caption = 'Consultar Pre'#231'o'
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object edloc: TUnimEdit
    Left = 0
    Top = 0
    Width = 320
    Height = 34
    Hint = ''
    Align = alTop
    Text = ''
    EmptyText = 'Codigo de Barras'
    FieldLabelAlign = laTop
    ParentFont = False
    TabOrder = 0
    InputType = 'CodBarra'
  end
  object BtLocalizar: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 37
    Width = 314
    Height = 50
    Hint = ''
    Align = alTop
    Caption = '<i class="fas fa-comment-dollar fa-50"></i> Localizar'
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
        'r.addCls('#39'bntLogin'#39');'#65279#13#10'}'
      'tap=function tap(sender, e, eOpts)'#13#10'{'#13#10'  '#13#10'}')
    UI = 'round'
    Font.Color = clWhite
    Font.Height = -15
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'bntLogin'
    OnClick = BtLocalizarClick
  end
  object UnimLabel3: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 93
    Width = 314
    Height = 27
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = 
      '................................................................' +
      '................................................................' +
      '..........'
    Align = alTop
    Anchors = []
    ParentColor = False
    Color = 15892224
    ParentFont = False
    Font.Color = 15892224
    Font.Height = -13
    Font.Style = [fsBold]
  end
  object UnimDBListGrid1: TUnimDBListGrid
    Left = 0
    Top = 123
    Width = 320
    Height = 160
    Hint = ''
    Align = alTop
    DataSource = Udsproduto
  end
  object Univalor: TUnimLabel
    AlignWithMargins = True
    Left = 3
    Top = 286
    Width = 314
    Height = 33
    Hint = ''
    Alignment = taCenter
    AutoSize = False
    Caption = '...'
    Align = alTop
    Anchors = []
    ParentColor = False
    Color = 15892224
    ParentFont = False
    Font.Color = 15892224
    Font.Height = -13
    Font.Style = [fsBold]
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
  end
  object FDQueryFiltrar: TFDQuery
    Connection = UniMainModule.Connec
    Left = 172
    Top = 256
  end
  object Udsproduto: TUniDataSource
    DataSet = FDQueryFiltrar
    Left = 104
    Top = 128
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 64
    Top = 337
  end
end
