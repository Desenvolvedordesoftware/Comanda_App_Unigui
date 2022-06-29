unit UFrmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniLabel, unimLabel, uniGUIBaseClasses, uniButton, unimButton, uniEdit,
  unimEdit, uniBitBtn, unimBitBtn, uniWidgets, uniSweetAlert, dxGDIPlusClasses,
  uniImage, uniMultiItem, unimSelect, unimDBSelect;

type
  TFrmLoginForm = class(TUnimLoginForm)
    CntPnlTop: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    EdEmail: TUnimEdit;
    UniSweetAlert1: TUniSweetAlert;
    UniImage1: TUniImage;
    UnimLabel4: TUnimLabel;
    UnimButton1: TUnimButton;
    pn4: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    DBSelectUsuario: TUnimDBSelect;
    EdSenha: TUnimEdit;
    BtLogin: TUnimButton;
    LblEsqueceuSenha: TUnimLabel;
    procedure BtLoginClick(Sender: TObject);
    procedure LblEsqueceuSenhaClick(Sender: TObject);
    procedure DBSelectUsuarioExit(Sender: TObject);
    procedure UnimLoginFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmLoginForm: TFrmLoginForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ClassLogin, Mainm;

function FrmLoginForm: TFrmLoginForm;
begin
  Result := TFrmLoginForm(UniMainModule.GetFormInstance(TFrmLoginForm));
end;

procedure TFrmLoginForm.BtLoginClick(Sender: TObject);
begin

      if EdEmail.Text = '' then
      begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Usuário não Registrado!') ;
       DBSelectUsuario.SetFocus;
       exit;
       end;

       if EdSenha.Text = '' then
      begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Senha não Registrado!') ;
       EdSenha.SetFocus;
       exit;
       end;

      UniMainModule.FDQueryUsuario.CLOSE;
      UniMainModule.FDQueryUsuario.SQL.CLEAR;
      UniMainModule.FDQueryUsuario.SQl.ADD ('SELECT CODIGO, USUARIO_APP, SENHA_APP');
      UniMainModule.FDQueryUsuario.SQl.ADD ('from C000008');
      UniMainModule.FDQueryUsuario.SQl.ADD ('where CODIGO = '''+EdEmail.Text+'''');
      UniMainModule.FDQueryUsuario.OPEN;

      if UniMainModule.FDQueryUsuario.RecordCount = 0 then
      begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Usuário não Registrado!') ;
       EdEmail.SetFocus;
       exit;
       end;

      if (EdSenha.Text = UniMainModule.FDQueryUsuario.fieldbyname('SENHA_APP').asstring) and
      (EdEmail.Text = UniMainModule.FDQueryUsuario.fieldbyname('CODIGO').asstring) then
      Begin
         UniSweetAlert1.Title            := 'Olá';
         UniSweetAlert1.InputType        := ItNone;
         UniSweetAlert1.ShowCancelButton := False;
         UniSweetAlert1.Show(UniMainModule.FDQueryUsuario.fieldbyname('USUARIO_APP').asstring) ;
         MainmForm.Show ;
         exit;
      End
      else
      begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('Usuario ou Senha invalido!') ;
       EdSenha.SetFocus;
       exit;
       end;

end;

procedure TFrmLoginForm.DBSelectUsuarioExit(Sender: TObject);
begin
   begin
    UniMainModule.qroperador.CLOSE;
    UniMainModule.qroperador.SQL.CLEAR;
    UniMainModule.qroperador.SQl.ADD ('SELECT CODIGO');
    UniMainModule.qroperador.SQl.ADD ('from C000008');
    UniMainModule.qroperador.SQl.ADD ('where USUARIO_APP = '''+DBSelectUsuario.Text+'''');
    UniMainModule.qroperador.OPEN;

    EdEmail.Text := UniMainModule.qroperador.Fieldbyname('codigo').AsString;
    EdSenha.SetFocus;
  end;
end;

procedure TFrmLoginForm.LblEsqueceuSenhaClick(Sender: TObject);
begin
  UniSweetAlert1.Title            := 'Recuperar Senha';
  UniSweetAlert1.InputType        := ItText;
  UniSweetAlert1.ShowCancelButton := True;
  UniSweetAlert1.Show('Informe seu Email:');
end;

procedure TFrmLoginForm.UnimLoginFormShow(Sender: TObject);
begin


    Begin
         UniMainModule.FDQueryUsuario.CLOSE;
         UniMainModule.FDQueryUsuario.SQL.CLEAR;
         UniMainModule.FDQueryUsuario.SQl.ADD ('SELECT US.*');
         UniMainModule.FDQueryUsuario.SQl.ADD ('from C000008 US');
         UniMainModule.FDQueryUsuario.SQl.ADD ('where situacao = 1 and senha_app >=:cod');
         UniMainModule.FDQueryUsuario.ParamByName('cod').AsString := '''1''';
         UniMainModule.FDQueryUsuario.SQl.ADD ('order by US.NOME');
         UniMainModule.FDQueryUsuario.OPEN;

         DBSelectUsuario.Items.Clear;

         while not UniMainModule.FDQueryUsuario.Eof do
         begin
           DBSelectUsuario.Items.Add(UniMainModule.FDQueryUsuario.Fieldbyname('USUARIO_APP').AsString);
           UniMainModule.FDQueryUsuario.Next;
           Application.ProcessMessages;
         end;
      End;
      DBSelectUsuario.SetFocus;


   { if FrmLoginForm.Width < 720 then
    Begin
     UniImage1.Picture.LoadFromFile('C:\GCSISTEM\PDV\img\fundo_inicial.jpg');
    End;}
end;

initialization
  RegisterAppFormClass(TFrmLoginForm);

end.
