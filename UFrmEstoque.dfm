object EstoqueForm: TEstoqueForm
  Left = 0
  Top = 0
  ClientHeight = 574
  ClientWidth = 325
  Caption = 'Produto'
  OnShow = UnimFormShow
  BorderIcons = []
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 47
  PlatformData = {}
  object pn3: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 319
    Height = 78
    Hint = ''
    Align = alTop
    Color = clWhite
    object edloc: TUnimEdit
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 313
      Height = 31
      Hint = ''
      Align = alClient
      Text = ''
      CharCase = ecUpperCase
      EmptyText = 'Codigo/ Descri'#231#227'o'
      FieldLabelAlign = laTop
      FieldLabelFont.Color = clWhite
      FieldLabelFont.Height = -16
      ParentFont = False
      Font.Color = clBlack
      Font.Height = -12
      TabOrder = 1
      InputType = 'text'
    end
    object btloc: TUnimButton
      AlignWithMargins = True
      Left = 3
      Top = 40
      Width = 313
      Height = 35
      Hint = ''
      Align = alBottom
      Caption = '<i class="fas fa-search-location fa-25"></i> Localizar'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
      IconAlign = iaCenter
      UI = 'round'
      Font.Color = clWhite
      Font.Height = -11
      LayoutConfig.Cls = 'btloc'
      OnClick = btlocClick
    end
  end
  object grid_prod: TUnimDBListGrid
    Left = 0
    Top = 84
    Width = 325
    Height = 434
    Hint = ''
    BodyRTL = False
    InputRTL = False
    Align = alClient
    DataSource = UniMainModule.DSProdutos
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'config.loadin' +
        'gText='#39'Carregando...'#39';'#13#10'config.gruped=false;'#13#10'config.selectedCls' +
        '='#39#39';'#13#10'config.itemTpl='#39'<table style="width:100%;white-space: nowr' +
        'ap;horizontal-align:middle;">'#39'+'#13#10'               '#13#10'              ' +
        ' '#39'<tr>'#39'+'#13#10'                 '#39'<td style="color:#3a6383;padding-lef' +
        't:5px" colspan="2">Cod.: {0}</td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10' ' +
        '                '#39'<td style="font-size:10px;padding-top:2px;paddi' +
        'ng-left:5px;color:#535454;padding-left:5px" colspan="2">Prod.: {' +
        '1}</td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10'                 '#39'<td style' +
        '="font-size:10px;padding-top:2px;padding-left:5px;color:#535454;' +
        'padding-left:5px" colspan="2">Vlr.Und.: {2}</td>'#39'+'#13#10'            ' +
        '   '#39'</tr>'#39'+ '#13#10'                 '#39'<td style="font-size:10px;paddin' +
        'g-top:2px;padding-left:5px;color:#535454;padding-left:5px" colsp' +
        'an="2">Qtde.: {3}</td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10'            ' +
        '   '#39'</table>'#39';'#13#10'}')
    Options = [dgTitles, dgColLines, dgConfirmDelete]
    OnClick = grid_prodClick
    Columns = <
      item
        Title.Caption = ' '
        Title.Font.Height = -11
        FieldName = 'CODIGO'
        Width = 64
      end
      item
        Title.Caption = ' '
        FieldName = 'PRODUTO'
        Width = 64
      end
      item
        Title.Caption = ' '
        FieldName = 'PRECOVENDA'
        Width = 64
      end
      item
        Title.Caption = ' '
        FieldName = 'ESTOQUE_ATUAL'
        Width = 64
      end>
  end
  object dbcod: TUnimDBEdit
    Left = 858
    Top = 304
    Width = 97
    Height = 33
    Hint = ''
    DataField = 'CODIGO'
    DataSource = UniMainModule.DSProdutos
    TabOrder = 2
  end
  object btSair: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 521
    Width = 319
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
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 64
    Top = 337
  end
end
