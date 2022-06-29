unit UFrmMovimentos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniButton, unimButton;

type
  TFrmMovimentosForm = class(TUnimForm)
    btVenda: TUnimButton;
    btSair: TUnimButton;
    procedure btVendaClick(Sender: TObject);
    procedure btSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MovimentosForm: TFrmMovimentosForm;

implementation

uses
  MainModule, uniGUIApplication, UFrmAterarPrecoProduto,
  UFrmConsultarPreco, UFrmPedidodeVenda;

{$R *.dfm}

function MovimentosForm: TFrmMovimentosForm;
begin
  Result := TFrmMovimentosForm(UniMainModule.GetFormInstance(TFrmMovimentosForm));
end;

procedure TFrmMovimentosForm.btSairClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmMovimentosForm.btVendaClick(Sender: TObject);
begin
   PeditoVendaForm.show;
end;

end.
