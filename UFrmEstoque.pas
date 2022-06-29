unit UFrmEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton, uniBasicGrid, uniDBGrid,
  unimDBListGrid, uniEdit, unimEdit, uniSweetAlert, uniDBEdit, uniLabel,
  uniDBText, unimDBEdit;

type
  TEstoqueForm = class(TUnimForm)
    btSair: TUnimButton;
    pn3: TUnimContainerPanel;
    edloc: TUnimEdit;
    btloc: TUnimButton;
    UniSweetAlert1: TUniSweetAlert;
    dbcod: TUnimDBEdit;
    grid_prod: TUnimDBListGrid;
    procedure BtAteraPrecoClick(Sender: TObject);
    procedure btPrecoClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
    procedure btlocClick(Sender: TObject);
    procedure grid_prodClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function EstoqueForm: TEstoqueForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UFrmAterarPrecoProduto,
  UFrmConsultarPreco, UFrmPedidodeVenda;

function EstoqueForm: TEstoqueForm;
begin
  Result := TEstoqueForm(UniMainModule.GetFormInstance(TEstoqueForm));
end;

procedure TEstoqueForm.BtAteraPrecoClick(Sender: TObject);
begin
 AtualizarPrecoProdForm.show;
end;

procedure TEstoqueForm.btlocClick(Sender: TObject);
begin

    if edloc.Text = '' then
    Begin
     UniMainModule.qrproduto.CLOSE;
     UniMainModule.qrproduto.SQL.CLEAR;
     UniMainModule.qrproduto.SQl.ADD ('select prod.*, est.estoque_atual');
     UniMainModule.qrproduto.SQl.ADD ('from c000025 prod, c000100 est');
     UniMainModule.qrproduto.SQl.ADD ('where prod.codigo = est.codproduto');
     UniMainModule.qrproduto.SQl.ADD ('order by prod.produto');
     UniMainModule.qrproduto.OPEN;
     edloc.SetFocus;
     exit;
     End;

 {  //localizar pelo codigo
  Begin
    UniMainModule.qrproduto.CLOSE;
    UniMainModule.qrproduto.SQL.CLEAR;
    UniMainModule.qrproduto.SQl.ADD ('select prod.*, est.estoque_atual');
    UniMainModule.qrproduto.SQl.ADD ('from c000025 prod, c000100 est');
    UniMainModule.qrproduto.SQl.ADD ('where prod.codigo = est.codproduto and prod.codigo =:cod');
    UniMainModule.qrproduto.ParamByName('cod').AsString := UniMainModule.Zerar(edloc.Text,6);
    UniMainModule.qrproduto.OPEN;

   if UniMainModule.qrproduto.recordcount > 0 then
   Begin
    grid_prod.SetFocus;
    exit;
   End;
  End;}

   //localizar pelo cod barra
  {Begin
   UniMainModule.qrproduto.CLOSE;
   UniMainModule.qrproduto.SQL.CLEAR;
    UniMainModule.qrproduto.SQl.ADD ('select prod.*, est.estoque_atual');
    UniMainModule.qrproduto.SQl.ADD ('from c000025 prod, c000100 est');
   UniMainModule.qrproduto.SQl.ADD ('where prod.codigo = est.codproduto and  prod.codbarra =:codbarra');
   UniMainModule.qrproduto.ParamByName('codbarra').AsString := edloc.Text;
   UniMainModule.qrproduto.OPEN;
   if UniMainModule.qrproduto.recordcount > 0 then
   Begin
    grid_prod.SetFocus;
    exit;
   End;
  End;}

   //localizar pelo descricao
  Begin
   UniMainModule.qrproduto.CLOSE;
   UniMainModule.qrproduto.SQL.CLEAR;
    UniMainModule.qrproduto.SQl.ADD ('select prod.*, est.estoque_atual');
    UniMainModule.qrproduto.SQl.ADD ('from c000025 prod, c000100 est');
   UniMainModule.qrproduto.SQl.ADD ('where prod.codigo = est.codproduto and  prod.produto like ''%'+edloc.Text+'%''');
   UniMainModule.qrproduto.OPEN;

   if UniMainModule.qrproduto.recordcount > 0 then
   Begin
    grid_prod.SetFocus;
    exit;
   End;
  End;

   Begin
     UniSweetAlert1.Title            := 'Atenção';
     UniSweetAlert1.InputType        := ItNone;
     UniSweetAlert1.AlertType        := atInfo;
     UniSweetAlert1.ShowCancelButton := False;
     UniSweetAlert1.Show('Produto não encontrado');
     edloc.SetFocus;
     exit;
     End;

end;

procedure TEstoqueForm.btPrecoClick(Sender: TObject);
begin
   ConsultarPrecoForm.show;
end;

procedure TEstoqueForm.btSairClick(Sender: TObject);
begin
   Close;
end;

procedure TEstoqueForm.grid_prodClick(Sender: TObject);
begin

   PeditoVendaForm.edcodproduto.Text :=  dbcod.Text;
  PeditoVendaForm.btloc.Click;
  close;
end;

procedure TEstoqueForm.UnimFormShow(Sender: TObject);
begin
  if edloc.Text = '' then
    Begin
     UniMainModule.qrproduto.CLOSE;
     UniMainModule.qrproduto.SQL.CLEAR;
     UniMainModule.qrproduto.SQl.ADD ('select prod.*, est.estoque_atual');
     UniMainModule.qrproduto.SQl.ADD ('from c000025 prod, c000100 est');
     UniMainModule.qrproduto.SQl.ADD ('where prod.codigo = est.codproduto');
     UniMainModule.qrproduto.SQl.ADD ('order by prod.produto');
     UniMainModule.qrproduto.OPEN;
     edloc.SetFocus;
     End;
end;

end.
