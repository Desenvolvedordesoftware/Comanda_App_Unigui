{$define UNIGUI_VCL} // Comment out this line to turn this project into an ISAPI module

{$ifndef UNIGUI_VCL}
library
{$else}
program
{$endif}
  Ss_Comanda;

uses
  uniGUIISAPI,
  Forms,
  ServerModule in 'ServerModule.pas' {UniServerModule: TUniGUIServerModule},
  MainModule in 'MainModule.pas' {UniMainModule: TUniGUIMainModule},
  Mainm in 'Mainm.pas' {MainmForm: TUnimForm},
  UFrmLogin in 'UFrmLogin.pas' {FrmLoginForm: TUnimLoginForm},
  ClassLogin in 'ClassLogin.pas',
  UFrmEstoque in 'UFrmEstoque.pas' {EstoqueForm: TUnimForm},
  UFrmAterarPrecoProduto in 'UFrmAterarPrecoProduto.pas' {AtualizarPrecoProdForm: TUnimForm},
  UFrmConsultarPreco in 'UFrmConsultarPreco.pas' {ConsultarPrecoForm: TUnimForm},
  UFrmMovimentos in 'UFrmMovimentos.pas' {FrmMovimentosForm: TUnimForm},
  UFrmPedidodeVenda in 'UFrmPedidodeVenda.pas' {PeditoVendaForm: TUnimForm},
  UFrmFicha_cliente in 'UFrmFicha_cliente.pas' {Ficha_ClienteForm: TUnimForm};

{$R *.res}

{$ifndef UNIGUI_VCL}
exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;
{$endif}

begin
{$ifdef UNIGUI_VCL}
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  TUniServerModule.Create(Application);
  Application.Run;
{$endif}
end.
