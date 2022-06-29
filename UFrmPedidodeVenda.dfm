object PeditoVendaForm: TPeditoVendaForm
  Left = 0
  Top = 0
  ClientHeight = 619
  ClientWidth = 361
  Caption = 'Itens Pedido'
  OnShow = UnimFormShow
  BorderIcons = []
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimButton1: TUnimButton
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 355
    Height = 38
    Hint = ''
    Align = alTop
    Caption = 'Pedido'
    ClientEvents.ExtEvents.Strings = (
      
        'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
        'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
    IconAlign = iaCenter
    UI = 'round'
    Font.Color = clWhite
    Font.Height = -19
    Font.Style = [fsBold]
    LayoutConfig.Cls = 'btgravar'
  end
  object CntPnlTop: TUnimContainerPanel
    Left = 0
    Top = 44
    Width = 361
    Height = 39
    Hint = ''
    Align = alTop
    Color = clNone
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    DesignSize = (
      361
      39)
    object UnimLabel2: TUnimLabel
      Left = 96
      Top = 198
      Width = 41
      Height = 70
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="fa fa-gg-circle fa-5x" aria-hidden="true"></i>'
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      Color = 16580734
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
    end
    object btgravar: TUnimButton
      AlignWithMargins = True
      Left = 227
      Top = 3
      Width = 131
      Height = 33
      Hint = ''
      Align = alRight
      Caption = '<i class="fas fa-share-square fa-50"></i> Gravar'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
      IconAlign = iaCenter
      UI = 'round'
      Font.Color = clWhite
      Font.Height = -15
      Font.Style = [fsBold]
      LayoutConfig.Cls = 'btgravar'
      OnClick = btgravarClick
    end
    object lbnumeromesa: TUnimLabel
      AlignWithMargins = True
      Left = 135
      Top = 3
      Width = 86
      Height = 33
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '1'
      Align = alClient
      ParentFont = False
      Font.Color = clRed
      Font.Height = -27
    end
    object lvstatus_venda: TUnimLabel
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 14
      Height = 33
      Hint = ''
      AutoSize = False
      Caption = 'P'
      Align = alLeft
      ParentFont = False
      Font.Color = clNavy
      Font.Height = -13
    end
    object btvoltar: TUnimButton
      AlignWithMargins = True
      Left = 23
      Top = 3
      Width = 106
      Height = 33
      Hint = ''
      Align = alLeft
      Caption = '<i class="fas fa-share-square fa-50"></i> Voltar'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
      IconAlign = iaCenter
      UI = 'round'
      Font.Color = clGreen
      Font.Height = -11
      LayoutConfig.Cls = 'btvoltar'
      OnClick = btvoltarClick
    end
  end
  object UnimContainerPanel1: TUnimContainerPanel
    Left = 0
    Top = 83
    Width = 361
    Height = 37
    Hint = ''
    Align = alTop
    Color = clNone
    ClientEvents.Enabled = False
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    DesignSize = (
      361
      37)
    object UnimLabel5: TUnimLabel
      Left = 96
      Top = 198
      Width = 41
      Height = 70
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="fa fa-gg-circle fa-5x" aria-hidden="true"></i>'
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      Color = 16580734
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
    end
    object lbstatusItens_valortotal: TUnimButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 355
      Height = 31
      Hint = ''
      Align = alClient
      Caption = ''
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'.bntMesa'#39');'#65279#13#10'}')
      IconAlign = iaCenter
      UI = 'round'
      Font.Color = clGreen
      Font.Height = -11
      LayoutConfig.Cls = 'btvoltar'
    end
  end
  object P3: TUnimContainerPanel
    Left = 0
    Top = 120
    Width = 361
    Height = 462
    Hint = ''
    Align = alClient
    Color = clWhite
    object P1: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 361
      Height = 201
      Hint = ''
      Align = alTop
      Color = clWhite
      object pn2: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 55
        Width = 355
        Height = 31
        Hint = ''
        Align = alTop
        Color = clWhite
        object eddecricao: TUnimEdit
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 302
          Height = 25
          Hint = ''
          Enabled = False
          Align = alClient
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Produto'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
        object UnimLabel3: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 41
          Height = 25
          Hint = ''
          AutoSize = False
          Caption = 'Desc.:'
          Align = alLeft
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
      end
      object pn1: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 355
        Height = 46
        Hint = ''
        Align = alTop
        Color = clWhite
        object btloc: TUnimButton
          AlignWithMargins = True
          Left = 186
          Top = 3
          Width = 151
          Height = 40
          Hint = ''
          Align = alLeft
          Caption = '<i class="fas fa-search-location fa-25"></i> Buscar Produto'
          ClientEvents.ExtEvents.Strings = (
            
              'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
              'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
          UI = 'round'
          Font.Color = clWhite
          Font.Height = -11
          LayoutConfig.Cls = 'btloc'
          OnClick = btlocClick
        end
        object edcodproduto: TUnimEdit
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 130
          Height = 40
          Hint = ''
          Align = alLeft
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Codigo'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 2
          InputType = 'number'
        end
        object UnimLabel1: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 41
          Height = 40
          Hint = ''
          AutoSize = False
          Caption = 'Cod.:'
          Align = alLeft
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
      end
      object pn3: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 92
        Width = 355
        Height = 31
        Hint = ''
        Align = alTop
        Color = clWhite
        object UnimLabel6: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 41
          Height = 25
          Hint = ''
          AutoSize = False
          Caption = 'Qtde.:'
          Align = alLeft
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
        object edqtde: TUnimEdit
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 130
          Height = 25
          Hint = ''
          Align = alLeft
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Qtde'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 2
          InputType = 'number'
        end
      end
      object pn4: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 129
        Width = 355
        Height = 31
        Hint = ''
        Align = alTop
        Color = clWhite
        object edobs: TUnimEdit
          AlignWithMargins = True
          Left = 50
          Top = 3
          Width = 302
          Height = 25
          Hint = ''
          Align = alClient
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'obs'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
        object UnimLabel7: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 41
          Height = 25
          Hint = ''
          AutoSize = False
          Caption = 'Obs.:'
          Align = alLeft
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
      end
      object btexcluir_itens: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 166
        Width = 151
        Height = 32
        Hint = ''
        Align = alLeft
        Caption = '<i class="fas fa-trash-alt fa-50"></i> Excluir item'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
            'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        IconAlign = iaCenter
        IconCls = 'delete'
        UI = 'round'
        ScreenMask.Color = clRed
        Font.Color = clWhite
        Font.Height = -11
        LayoutConfig.Cls = 'btexcluir_itens'
        OnClick = btexcluir_itensClick
      end
      object btinserir_item: TUnimButton
        AlignWithMargins = True
        Left = 207
        Top = 166
        Width = 151
        Height = 32
        Hint = ''
        Align = alRight
        Caption = '<i class="fas fa-cart-plus fa-50"></i> Inserir item'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
            'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        IconAlign = iaCenter
        IconCls = 'add'
        UI = 'round'
        Font.Color = clGreen
        Font.Height = -11
        LayoutConfig.Cls = 'btinserir_item'
        OnClick = btIncluirItemClick
      end
    end
    object DBListGrid: TUnimDBListGrid
      Left = 0
      Top = 201
      Width = 361
      Height = 261
      Hint = ''
      BodyRTL = False
      InputRTL = False
      Align = alClient
      DataSource = UniMainModule.v_item
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'config.loadin' +
          'gText='#39'Carregando...'#39';'#13#10'config.gruped=false;'#13#10'config.selectedCls' +
          '='#39#39';'#13#10'config.itemTpl='#39'<table style="width:100%;white-space: nowr' +
          'ap;vertical-align:middle;">'#39'+'#13#10'               '#13#10'               '#39 +
          '<tr>'#39'+'#13#10'                '#39'<td style="color:#3a6383;padding-left:5' +
          'px" colspan="2">Cod.: {0}</td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10'    ' +
          '             '#39'<td style="font-size:10px;padding-top:2px;padding-' +
          'left:5px;color:#535454;padding-left:5px" colspan="2">Prod.: {1}<' +
          '/td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10'                 '#39'<td style="f' +
          'ont-size:10px;padding-top:2px;padding-left:5px;color:#535454;pad' +
          'ding-left:5px" colspan="2">Vlr.Und.: {2}</td>'#39'+'#13#10'               ' +
          #39'</tr>'#39'+ '#13#10'                 '#39'<td style="font-size:10px;padding-t' +
          'op:2px;padding-left:5px;color:#535454;padding-left:5px" colspan=' +
          '"2">Qtde.: {3}</td>'#39'+'#13#10'               '#39'</tr>'#39'+ '#13#10'               ' +
          '  '#39'<td style="font-size:10px;padding-top:2px;padding-left:5px;co' +
          'lor:#535454;padding-left:5px" colspan="2">Vlr.Tot.: {4}</td>'#39'+'#13#10 +
          '               '#39'</tr>'#39'+'#13#10'                 '#39'<td style="font-size:' +
          '10px;padding-top:2px;padding-left:5px;color:#535454;padding-left' +
          ':5px" colspan="2">Obs.: {5}</td>'#39'+'#13#10'               '#39'</tr>'#39'+'#13#10'   ' +
          '            '#39'</table>'#39';'#13#10'}')
      Options = [dgRowLines, dgConfirmDelete, dgMultiSelect]
      Columns = <
        item
          Title.Caption = ' '
          Title.Font.Height = -11
          FieldName = 'CODIGO'
          Width = 64
        end
        item
          Title.Caption = ' '
          Title.Font.Height = -11
          FieldName = 'PRODUTO'
          Width = 64
        end
        item
          Title.Caption = ' '
          Title.Font.Height = -11
          FieldName = 'UNITARIO'
          Width = 64
        end
        item
          Title.Caption = ' '
          Title.Font.Height = -11
          FieldName = 'QTDE'
          Width = 64
        end
        item
          Title.Caption = ' '
          Title.Font.Height = -11
          FieldName = 'TOTAL'
          Width = 64
        end
        item
          Title.Caption = ' '
          FieldName = 'COMPLEMENTO'
          Width = 64
        end>
    end
    object dbcod: TUnimDBEdit
      Left = 925
      Top = -40
      Width = 31
      Height = 25
      Hint = ''
      Enabled = False
      DataField = 'CODIGO'
      DataSource = UniMainModule.v_item
      TabOrder = 3
    end
    object NEdit_vlrund: TUnimNumberEdit
      Left = 802
      Top = -50
      Width = 25
      Height = 35
      Hint = ''
      Enabled = False
      TabOrder = 4
    end
    object NEdit_qtde: TUnimNumberEdit
      Left = 886
      Top = -50
      Width = 33
      Height = 33
      Hint = ''
      Enabled = False
      TabOrder = 5
    end
  end
  object P2: TUnimContainerPanel
    Left = 0
    Top = 582
    Width = 361
    Height = 37
    Hint = ''
    Align = alBottom
    Color = 15963681
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    DesignSize = (
      361
      37)
    object UnimLabel4: TUnimLabel
      Left = 96
      Top = 198
      Width = 41
      Height = 70
      Hint = ''
      Alignment = taCenter
      AutoSize = False
      Caption = '<i class="fa fa-gg-circle fa-5x" aria-hidden="true"></i>'
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      Color = 16580734
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -13
    end
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 64
    Top = 337
  end
  object aviso_cancelar_item: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    OnConfirm = aviso_cancelar_itemConfirm
    Left = 192
    Top = 321
  end
end
