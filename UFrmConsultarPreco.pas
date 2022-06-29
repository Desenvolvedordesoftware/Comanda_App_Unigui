unit UFrmConsultarPreco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, uniBasicGrid, uniDBGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uniLabel, unimLabel, uniButton,
  unimButton, uniGUIBaseClasses, uniEdit, unimEdit, DBAccess, Uni,
  unimDBListGrid, uniSweetAlert, uniDBVerticalGrid, uniDBPivotGrid,
  uniDBTreeGrid, unimDBGrid;

type
  TConsultarPrecoForm = class(TUnimForm)
    edloc: TUnimEdit;
    BtLocalizar: TUnimButton;
    UnimLabel3: TUnimLabel;
    FDQueryFiltrar: TFDQuery;
    Univalor: TUnimLabel;
    Udsproduto: TUniDataSource;
    UniSweetAlert1: TUniSweetAlert;
    UnimDBListGrid1: TUnimDBListGrid;
    btSair: TUnimButton;
    procedure BtLocalizarClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ConsultarPrecoForm: TConsultarPrecoForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function ConsultarPrecoForm: TConsultarPrecoForm;
begin
  Result := TConsultarPrecoForm(UniMainModule.GetFormInstance(TConsultarPrecoForm));
end;

procedure TConsultarPrecoForm.BtLocalizarClick(Sender: TObject);
begin
if edloc.text = '' then
    begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Favor Informar o CODIGO DE BARRA VALIDO!');
      UniVALOR.caption := 'Favor Informar o CODIGO DE BARRA VALIDO!';
      edloc.text := '';
      Univalor.text := '';
      edloc.SetFocus;
      exit;
    end
     else
    Begin
     FDQueryFiltrar.CLOSE;
     FDQueryFiltrar.SQL.CLEAR;
     FDQueryFiltrar.SQl.ADD ('SELECT PRODUTO, PRECOVENDA AS VALOR from C000025');
     FDQueryFiltrar.SQl.ADD ('where PRODUTO = '''+edloc.text+'''');
     FDQueryFiltrar.OPEN;
     Univalor.caption :='';
     End;
    if FDQueryFiltrar.recordcount = 0 then
    Begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Produto não encontrado!');
      edloc.SetFocus;
     Univalor.caption := 'Produto não encontrado!';
    End;
    edloc.SetFocus;
end;


procedure TConsultarPrecoForm.btSairClick(Sender: TObject);
begin
    Close;
end;

end.
