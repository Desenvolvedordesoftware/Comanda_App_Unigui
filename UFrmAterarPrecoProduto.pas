unit UFrmAterarPrecoProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uniLabel, uniButton, unimButton,
  uniGUIBaseClasses, uniEdit, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  unimEdit, unimLabel;

type
  TAtualizarPrecoProdForm = class(TUnimForm)
    FDQueryupdate: TFDQuery;
    FDQueryProdutos: TFDQuery;
    FDQueryFiltrar: TFDQuery;
    BtLocalizar: TUnimButton;
    btAlterarPreco: TUnimButton;
    edloc: TUnimEdit;
    LblEsqueceuSenha: TUnimLabel;
    Univalor: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UniLabel3: TUnimLabel;
    UnimLabel5: TUnimLabel;
    Unidescricao: TUnimLabel;
    Uniedvaloratualiza: TUnimEdit;
    btCodBarras: TUnimButton;
    btSair: TUnimButton;
    procedure BtLocalizarClick(Sender: TObject);
    procedure btAlterarPrecoClick(Sender: TObject);
    procedure btCodBarrasAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function AtualizarPrecoProdForm: TAtualizarPrecoProdForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function AtualizarPrecoProdForm: TAtualizarPrecoProdForm;
begin
  Result := TAtualizarPrecoProdForm(UniMainModule.GetFormInstance(TAtualizarPrecoProdForm));
end;

procedure TAtualizarPrecoProdForm.btAlterarPrecoClick(Sender: TObject);
begin
       if Uniedvaloratualiza.Text = '' then
    //if Uniedvaloratualiza.Text >= 'R$ 0,00' then
    //if Uniedvaloratualiza.Text >= '0' then
    Begin
      Showmessage('O preço atual não pode ser  = R$ 0,00!');
      UniVALOR.caption := 'O preço atual não pode ser  = R$ 0,00!';
      edloc.SetFocus;
      exit;
    End;
    if Uniedvaloratualiza.Text = '0' then
    Begin
      Showmessage('O preço atual não pode ser  = R$ 0,00!');
      UniVALOR.caption := 'O preço atual não pode ser  = R$ 0,00!';
      edloc.SetFocus;
      exit;
    End;
    if edloc.text = '' then
    begin
      Showmessage('Favor Informar o CODIGO DE BARRA VALIDO!');
      UniVALOR.caption := 'Favor Informar o CODIGO DE BARRA VALIDO!';
      edloc.SetFocus;
      exit;
    end;

    if edloc.text = '' then
    begin
      Showmessage('Favor Informar o CODIGO DE BARRA VALIDO!');
      UniVALOR.caption := 'Favor Informar o CODIGO DE BARRA VALIDO!';
      edloc.text := '';
      Unidescricao.text := '';
      Univalor.text := '';
      edloc.SetFocus;
      exit;
    end;

   begin
    FDQueryupdate.CLOSE;
    FDQueryupdate.SQL.CLEAR;
    FDQueryupdate.SQl.ADD ('UPDATE C000025 SET');
    FDQueryupdate.SQl.ADD ('PRECOVENDA = '''+Uniedvaloratualiza.Text+'''');
    FDQueryupdate.SQl.ADD ('where CODBARRA = '''+edloc.text+'''');
    FDQueryupdate.ExecSQL;

    Begin
    Showmessage('Preço atualizado com sucesso!');
    UniVALOR.caption := 'Preço atualizado com sucesso!';
    End;

    Begin
     edloc.text := '';
     Uniedvaloratualiza.text := '';
     Unidescricao.caption := '';
     UniLabel3.caption := '';
    End;
     edloc.SetFocus;
   end;
end;

procedure TAtualizarPrecoProdForm.btCodBarrasAjaxEvent(Sender: TComponent;
  EventName: string; Params: TUniStrings);
begin
     if EventName='BARCODE' then
        edloc.Text := Params['value'].value;
end;

procedure TAtualizarPrecoProdForm.BtLocalizarClick(Sender: TObject);
begin
   if edloc.text = '' then
    begin
      Showmessage('Favor Informar o CODIGO DE BARRA VALIDO!');
      UniVALOR.caption := 'Favor Informar o CODIGO DE BARRA VALIDO!';
      edloc.text := '';
      Unidescricao.text := '';
      Univalor.text := '';
      edloc.SetFocus;
      exit;
    end
     else
    Begin
     FDQueryFiltrar.CLOSE;
     FDQueryFiltrar.SQL.CLEAR;
     FDQueryFiltrar.SQl.ADD ('SELECT PRODUTO AS DESCRICAO, PRECOVENDA AS VALOR from C000025');
     FDQueryFiltrar.SQl.ADD ('where CODBARRA = '''+edloc.text+'''');
     FDQueryFiltrar.OPEN;
     End;
    if FDQueryFiltrar.recordcount = 0 then
    Begin
      Showmessage('Produto não encontrado!');
      edloc.SetFocus;
     //Unidescricao.caption := FDQueryFiltrar.ParamByName('PRODUTO').asstring;
     Univalor.caption := 'Produto não encontrado!';
    End;

    Begin
     FDQueryProdutos.CLOSE;
     FDQueryProdutos.SQL.CLEAR;
     FDQueryProdutos.SQl.ADD ('SELECT *from C000025');
     FDQueryProdutos.SQl.ADD ('where CODBARRA = '''+edloc.text+'''');
     FDQueryProdutos.OPEN;
     Begin
      Unidescricao.caption := FDQueryProdutos.fieldbyname('PRODUTO').asstring;
      UniLabel3.caption := FDQueryProdutos.fieldbyname('PRECOVENDA').asstring;
     End;
     Univalor.caption := '';
    End;
    Uniedvaloratualiza.SetFocus;
end;

procedure TAtualizarPrecoProdForm.btSairClick(Sender: TObject);
begin
   Close;
end;

end.
