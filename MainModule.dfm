object UniMainModule: TUniMainModule
  OldCreateOrder = False
  Theme = 'crisp'
  TouchTheme = 'material'
  MonitoredKeys.Keys = <>
  EnableSynchronousOperations = True
  ServerMessages.UnavailableErrMsg = 'Erro de comunica'#231#227'o'
  ServerMessages.LoadingMessage = 'Carregando...'
  ServerMessages.ExceptionTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    
      '<p style="text-align:center;color:#A05050">Ocorreu uma exce'#231#227'o n' +
      'o aplicativo:</p>'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.TerminateTemplate.Strings = (
    '<html>'
    '<body bgcolor="#dfe8f6">'
    '<p style="text-align:center;color:#0000A0">[###message###]</p>'
    
      '<p style="text-align:center;color:#A05050"><a href="[###url###]"' +
      '>Reiniciar o aplicativo</a></p>'
    '</body>'
    '</html>')
  ServerMessages.InvalidSessionMessage = 'Sess'#227'o inv'#225'lida ou tempo limite de sess'#227'o.'
  ServerMessages.TerminateMessage = 'Sess'#227'o da Web encerrada.'
  ApplicationDataModuleOptions.CreateOnDemand = True
  Height = 486
  Width = 557
  object Connec: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Database=C:\GCSISTEM\Server\BD\BASE.FDB'
      'Password=gcs@1946'
      'Port=3050'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 48
  end
  object FDQueryUsuario: TFDQuery
    Connection = Connec
    SQL.Strings = (
      'select *from c000008')
    Left = 48
    Top = 96
  end
  object qrproduto: TFDQuery
    Connection = Connec
    SQL.Strings = (
      'select pro.*, est.estoque_atual'
      'from c000025 pro, c000100 est'
      'where pro.codigo = est.codproduto'
      'order by produto')
    Left = 48
    Top = 152
  end
  object qritens: TFDQuery
    Connection = Connec
    SQL.Strings = (
      
        'select ip.cod_produto as CODIGO, p.produto, ip.qtde, ip.unitario' +
        ','
      ' ip.total, ip.complemento'
      'from r000002 ip, c000025 p'
      'where ip.cod_produto = p.codigo'
      'order by ip.codigo')
    Left = 184
    Top = 56
  end
  object v_item: TUniDataSource
    DataSet = qritens
    Left = 240
    Top = 64
  end
  object qrsequencia: TFDQuery
    Connection = Connec
    Left = 184
    Top = 184
  end
  object qrincluir_Itens: TFDQuery
    Connection = Connec
    Left = 264
    Top = 168
  end
  object DSProdutos: TUniDataSource
    DataSet = qrproduto
    Left = 48
    Top = 208
  end
  object qrexcluir_item: TFDQuery
    Connection = Connec
    Left = 264
    Top = 248
  end
  object qrfiltrar_excluir: TFDQuery
    Connection = Connec
    Left = 264
    Top = 304
  end
  object qrverificar_mesa: TFDQuery
    Connection = Connec
    Left = 72
    Top = 280
  end
  object qrfinalizar_pedido: TFDQuery
    Connection = Connec
    Left = 264
    Top = 368
  end
  object qrExecuta: TFDQuery
    Connection = Connec
    Left = 256
    Top = 416
  end
  object qrcliente: TFDQuery
    Connection = Connec
    Left = 456
    Top = 192
  end
  object qrlocalizar_item: TFDQuery
    Connection = Connec
    Left = 336
    Top = 120
  end
  object qrcalcular_total_pedito: TFDQuery
    Connection = Connec
    Left = 464
    Top = 40
  end
  object qrincluir_cliente: TFDQuery
    Connection = Connec
    Left = 336
    Top = 176
  end
  object DSusuarios: TUniDataSource
    DataSet = FDQueryUsuario
    Left = 152
    Top = 120
  end
  object qroperador: TFDQuery
    Connection = Connec
    SQL.Strings = (
      'select *from c000008')
    Left = 112
    Top = 48
  end
  object qrobs: TFDQuery
    Connection = Connec
    Left = 424
    Top = 360
  end
end
