object MainmForm: TMainmForm
  Left = 0
  Top = 0
  ClientHeight = 797
  ClientWidth = 397
  Caption = 'Mesa / Comanda'
  OnShow = UnimFormShow
  BorderIcons = []
  ShowTitle = False
  TitleButtons = <>
  PixelsPerInch = 96
  TextHeight = 13
  ScrollPosition = 0
  ScrollHeight = 0
  PlatformData = {}
  object UnimContainerPanel3: TUnimContainerPanel
    Left = 0
    Top = 0
    Width = 397
    Height = 37
    Hint = ''
    Align = alTop
    Color = 15963681
    ClientEvents.UniEvents.Strings = (
      
        'beforeInit=function beforeInit(sender, config)'#13#10'{'#13#10'     config.c' +
        'ls = "pnlround" '#13#10'}')
    LayoutConfig.Cls = 'pnlround'
    DesignSize = (
      397
      37)
    object UnimLabel4: TUnimLabel
      Left = 96
      Top = 198
      Width = 180
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
      Width = 391
      Height = 31
      Hint = ''
      Align = alClient
      Caption = 'Mesa / Comanda'
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
    AlignWithMargins = True
    Left = 3
    Top = 40
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa1: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa1: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 1'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa1Click
      end
    end
    object pnmesa4: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa4: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 4'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa4Click
      end
    end
    object pnmesa3: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa3: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 3'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa3Click
      end
    end
    object pnmesa2: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa2: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 2'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa2Click
      end
    end
  end
  object UnimContainerPanel38: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 92
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa5: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa5: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 5'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa5Click
      end
    end
    object pnmesa8: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa8: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 8'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa8Click
      end
    end
    object pnmesa7: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa7: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 7'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa7Click
      end
    end
    object pnmesa6: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa6: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 6'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa6Click
      end
    end
  end
  object UnimContainerPanel33: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 144
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa9: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa9: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 9'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa9Click
      end
    end
    object pnmesa12: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa12: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 12'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa12Click
      end
    end
    object pnmesa11: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa11: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 11'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa11Click
      end
    end
    object pnmesa10: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa10: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 10'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa10Click
      end
    end
  end
  object UnimContainerPanel28: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 196
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa13: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa13: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 13'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa13Click
      end
    end
    object pnmesa16: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa16: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 16'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa16Click
      end
    end
    object pnmesa15: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa15: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 15'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa15Click
      end
    end
    object pnmesa14: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa14: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 14'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa14Click
      end
    end
  end
  object UnimContainerPanel23: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 248
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa17: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa17: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 17'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa17Click
      end
    end
    object pnmesa20: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa20: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 20'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa20Click
      end
    end
    object pnmesa19: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa19: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 19'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa19Click
      end
    end
    object pnmesa18: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa18: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 18'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa18Click
      end
    end
  end
  object UnimContainerPanel18: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 300
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa21: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa21: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 21'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa21Click
      end
    end
    object pnmesa24: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa24: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 24'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa24Click
      end
    end
    object pnmesa23: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa23: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 23'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa23Click
      end
    end
    object pnmesa22: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa22: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 22'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa22Click
      end
    end
  end
  object UnimContainerPanel13: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 352
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa25: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa25: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 25'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa25Click
      end
    end
    object pnmesa28: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa28: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 28'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa28Click
      end
    end
    object pnmesa27: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa27: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 27'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa27Click
      end
    end
    object pnmesa26: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa26: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 26'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa26Click
      end
    end
  end
  object UnimContainerPanel8: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 404
    Width = 391
    Height = 46
    Hint = ''
    Align = alTop
    Color = clWhite
    object pnmesa29: TUnimContainerPanel
      Left = 0
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa29: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 29'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa29Click
      end
    end
    object pnmesa32: TUnimContainerPanel
      Left = 273
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa32: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 32'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa32Click
      end
    end
    object pnmesa31: TUnimContainerPanel
      Left = 182
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa31: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 31'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa31Click
      end
    end
    object pnmesa30: TUnimContainerPanel
      Left = 91
      Top = 0
      Width = 91
      Height = 46
      Hint = ''
      Align = alLeft
      Color = clWhite
      ClientEvents.Enabled = False
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
          'er.addCls('#39'bntMesa'#39');'#65279#13#10'}')
      LayoutConfig.Cls = 'btmesa1'
      object btmesa30: TUnimButton
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 85
        Height = 40
        Hint = ''
        Align = alClient
        Caption = '<i class="fas fa-utensils fa-50"></i> 30'
        ClientEvents.ExtEvents.Strings = (
          
            'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10'  send' +
            'er.addCls('#39'bntLogin'#39');'#65279#13#10'}')
        UI = 'round'
        Font.Color = clMaroon
        Font.Height = -16
        Font.Style = [fsBold]
        LayoutConfig.Cls = 'btmesa1'
        OnClick = btmesa30Click
      end
    end
  end
  object UnimContainerPanel5: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 456
    Width = 391
    Height = 10
    Hint = ''
    Align = alTop
    Color = clNone
    ExplicitLeft = -2
    ExplicitTop = 453
  end
  object UnimContainerPanel4: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 472
    Width = 391
    Height = 49
    Hint = ''
    Align = alTop
    Color = clNone
    ExplicitLeft = -2
    ExplicitTop = 438
    object btmesa_outras: TUnimButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 385
      Height = 43
      Hint = ''
      Align = alClient
      Caption = '<i class="fas fa-utensils fa-50"></i> Add Mesa'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
      UI = 'round'
      Font.Color = clWhite
      Font.Height = -15
      Font.Style = [fsBold]
      LayoutConfig.Cls = 'btpedidoexp'
      OnClick = btmesa_outrasClick
    end
  end
  object UnimContainerPanel2: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 527
    Width = 391
    Height = 10
    Hint = ''
    Align = alTop
    Color = clNone
    ExplicitTop = 511
  end
  object UnimContainerPanel1: TUnimContainerPanel
    AlignWithMargins = True
    Left = 3
    Top = 543
    Width = 391
    Height = 49
    Hint = ''
    Align = alTop
    Color = clNone
    ExplicitTop = 511
    object btpedidoexp: TUnimButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 385
      Height = 43
      Hint = ''
      Align = alClient
      Caption = '<i class="fas fa-utensils fa-50"></i> Pedido express'
      ClientEvents.ExtEvents.Strings = (
        
          'added=function added(sender, container, index, eOpts)'#13#10'{'#13#10' sende' +
          'r.addCls('#39'bntLogin'#39');'#65279#13#10'}')
      UI = 'round'
      Font.Color = clWhite
      Font.Height = -15
      Font.Style = [fsBold]
      LayoutConfig.Cls = 'btpedidoexp'
      OnClick = btpedidoexpClick
    end
  end
  object UniSweetAlert1: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancel'
    Padding = 20
    Left = 112
    Top = 577
  end
  object Timer_Atu_mesas: TUniTimer
    Interval = 5000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = Timer_Atu_mesasTimer
    Left = 240
    Top = 600
  end
  object UniSweetAlert_addmesa: TUniSweetAlert
    Title = 'Title'
    ConfirmButtonText = 'OK'
    CancelButtonText = 'Cancelar'
    InputType = ItText
    Padding = 20
    OnConfirm = UniSweetAlert_addmesaConfirm
    Left = 40
    Top = 609
  end
end
