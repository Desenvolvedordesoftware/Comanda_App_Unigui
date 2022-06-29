unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, DBAccess, Uni, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, MemDS, uniGUIBaseClasses, uniGUIClasses,
  uniSweetAlert;

type
  TUniMainModule = class(TUniGUIMainModule)
    Connec: TFDConnection;
    FDQueryUsuario: TFDQuery;
    qrproduto: TFDQuery;
    qritens: TFDQuery;
    v_item: TUniDataSource;
    qrsequencia: TFDQuery;
    qrincluir_Itens: TFDQuery;
    DSProdutos: TUniDataSource;
    qrexcluir_item: TFDQuery;
    qrfiltrar_excluir: TFDQuery;
    qrverificar_mesa: TFDQuery;
    qrfinalizar_pedido: TFDQuery;
    qrExecuta: TFDQuery;
    qrcliente: TFDQuery;
    qrlocalizar_item: TFDQuery;
    qrcalcular_total_pedito: TFDQuery;
    qrincluir_cliente: TFDQuery;
    DSusuarios: TUniDataSource;
    qroperador: TFDQuery;
    qrobs: TFDQuery;
  private
    { Private declarations }
  public
  function Zerar(texto: string; qtde: integer): string;//Acrescentar Zeros a esquerda em uma String
    { Public declarations }
  end;

function UniMainModule: TUniMainModule;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function UniMainModule: TUniMainModule;
begin
  Result := TUniMainModule(UniApplication.UniMainModule)
end;

function TUniMainModule.Zerar(texto: string; qtde: integer): string;
Begin
 while length(texto) < qtde do texto := '0' + texto;
 result := texto;
End;

initialization
  RegisterMainModuleClass(TUniMainModule);
end.
