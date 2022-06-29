unit ClassLogin;


interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniPanel, uniGUIBaseClasses, uniGroupBox,
  uniBasicGrid, uniDBGrid, Vcl.Imaging.pngimage;

// Quando for usar injeção usando a class Helper, HABILITAR a Linha abaixo
  type
    TLogin = class // TAcoes = class Helper for TForm
    private

    public

    class  function ValidaUsuarioSenha(cUsuario,cSenha:String ) : boolean ;

  end;

// Quando for usar injeção usando a class Helper, DESABILITAR a Linha abaixo
//var
   oLogin = TLogin ;

implementation

uses  MainModule;

{ TLogin }

class function TLogin.ValidaUsuarioSenha(cUsuario, cSenha: String): boolean;
begin
    result := true ;
    try
      UniMainModule.FDQueryUsuario.CLOSE;
      UniMainModule.FDQueryUsuario.SQL.CLEAR;
      UniMainModule.FDQueryUsuario.SQl.ADD ('SELECT EMAIL, RG');
      UniMainModule.FDQueryUsuario.SQl.ADD ('from C000008');
      UniMainModule.FDQueryUsuario.OPEN;
      //if UniMainModule.FDQueryUsuario = 0 then
      Begin
         if ( UpperCase(cUsuario) = UniMainModule.FDQueryUsuario.fieldbyname('EMAIL').asstring )
          and (UpperCase(cSenha) = UniMainModule.FDQueryUsuario.fieldbyname('RG').asstring ) then
             Result := false
         Else
             Result := true ;
      End;
    Except
      on E: Exception do
         ShowMessage('Erro:' + E.Message );

    end;

end;

end.
