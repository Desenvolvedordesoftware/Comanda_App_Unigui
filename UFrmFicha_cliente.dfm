object Ficha_ClienteForm: TFicha_ClienteForm
  Left = 0
  Top = 0
  ClientHeight = 760
  ClientWidth = 343
  Caption = ''
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object P2: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 343
    Height = 760
    Hint = ''
    Align = alClient
    Color = 15963681
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    object UnimContainerPanel1: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 343
      Height = 37
      Hint = ''
      Align = alTop
      Color = 15963681
      ClientEvents.UniEvents.Strings = (
        
          'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
          'ls = "pnlround" '#13#10'}')
      LayoutConfig.Cls = 'pnlround'
      DesignSize = (
        343
        37)
      object UnimLabel4: TUnimLabel
        Left = 96
        Top = 198
        Width = 126
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
      object btvoltar: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 337
        Height = 31
        Hint = ''
        Align = alClient
        Caption = ' Dados do cliente'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
            'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        IconAlign = iaCenter
        UI = 'round'
        Font.Color = clGreen
        Font.Height = -16
        LayoutConfig.Cls = 'btvoltar'
      end
    end
    object P1: TUnimContainerPanel
      Left = 0
      Top = 37
      Width = 343
      Height = 723
      Hint = ''
      Align = alClient
      Color = clWhite
      object pn1: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 42
        Width = 337
        Height = 30
        Hint = ''
        Align = alTop
        Color = clWhite
        object ednumero_venda: TUnimEdit
          AlignWithMargins = True
          Left = 43
          Top = 3
          Width = 63
          Height = 24
          Hint = ''
          Enabled = False
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
          TabOrder = 1
          InputType = 'number'
        end
        object UnimLabel1: TUnimLabel
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 34
          Height = 24
          Hint = ''
          AutoSize = False
          Caption = 'Cod.:'
          Align = alLeft
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
        object UnimLabel2: TUnimLabel
          AlignWithMargins = True
          Left = 191
          Top = 3
          Width = 74
          Height = 24
          Hint = ''
          AutoSize = False
          Caption = 'Cod.Cliente.:'
          Align = alRight
          ParentFont = False
          Font.Color = clNavy
          Font.Height = -13
        end
        object edcod_cliente: TUnimEdit
          AlignWithMargins = True
          Left = 271
          Top = 3
          Width = 63
          Height = 24
          Hint = ''
          Enabled = False
          Align = alRight
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Codigo'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 4
          InputType = 'number'
        end
      end
      object pn3: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 156
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object edendereco: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Endere'#231'o'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object UnimContainerPanel2: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 195
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object edbairro: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Bairro'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object UnimContainerPanel3: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 117
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object ednome_cliente: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Nome'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object UnimContainerPanel4: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 78
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object ednomero_tel: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Telefone'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'number'
          OnExit = ednomero_telExit
        end
      end
      object UnimContainerPanel5: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 351
        Width = 337
        Height = 33
        Hint = ''
        Visible = False
        Align = alTop
        Color = clWhite
        object edcidade: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Cidade'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object UnimContainerPanel6: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 273
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object edobs: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Obs'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object UnimContainerPanel7: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 234
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object edpont_ref: TUnimEdit
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 24
          Hint = ''
          Align = alTop
          Text = ''
          CharCase = ecUpperCase
          EmptyText = 'Ponto referencia'
          FieldLabelAlign = laTop
          FieldLabelFont.Color = clWhite
          FieldLabelFont.Height = -16
          ParentFont = False
          Font.Color = clBlack
          Font.Height = -12
          TabOrder = 1
          InputType = 'text'
        end
      end
      object CntPnlTop: TUnimContainerPanel
        Left = 0
        Top = 0
        Width = 343
        Height = 39
        Hint = ''
        Align = alTop
        Color = 15963681
        ClientEvents.UniEvents.Strings = (
          
            'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
            'ls = "pnlround" '#13#10'}')
        LayoutConfig.Cls = 'pnlround'
        DesignSize = (
          343
          39)
        object UnimLabel10: TUnimLabel
          Left = 96
          Top = 198
          Width = 126
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
          Left = 189
          Top = 3
          Width = 151
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
      end
      object UnimContainerPanel8: TUnimContainerPanel
        AlignWithMargins = True
        Left = 3
        Top = 312
        Width = 337
        Height = 33
        Hint = ''
        Align = alTop
        Color = clWhite
        object edformapagamento: TUnimDBSelect
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 331
          Height = 27
          Hint = ''
          Align = alClient
          Items.Strings = (
            'Dinheiro'
            'Cart'#227'o credito'
            'Cart'#227'o debito'
            'Pix'
            'Aprazo ')
          ItemIndex = 0
          FieldLabelFont.Height = -19
          ScreenMask.ShowMessage = False
          Font.Color = clBlack
          Font.Height = -16
          TabOrder = 1
        end
      end
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
end
