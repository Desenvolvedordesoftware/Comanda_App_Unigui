unit Mainm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIRegClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniGUIBaseClasses, uniSweetAlert, uniButton, unimButton, uniEdit, unimEdit,
  uniTreeView, Vcl.Menus, uniMainMenu, uniPanel, uniTimer, uniLabel,
  dxGDIPlusClasses, uniImage, unimImage, unimLabel;

type
  TMainmForm = class(TUnimForm)
    UniSweetAlert1: TUniSweetAlert;
    P1: TUnimContainerPanel;
    UnimContainerPanel1: TUnimContainerPanel;
    btpedidoexp: TUnimButton;
    UnimContainerPanel2: TUnimContainerPanel;
    Timer_Atu_mesas: TUniTimer;
    pnmesa1: TUnimContainerPanel;
    btmesa1: TUnimButton;
    pnmesa4: TUnimContainerPanel;
    btmesa4: TUnimButton;
    pnmesa3: TUnimContainerPanel;
    btmesa3: TUnimButton;
    pnmesa2: TUnimContainerPanel;
    btmesa2: TUnimButton;
    UnimContainerPanel8: TUnimContainerPanel;
    pnmesa29: TUnimContainerPanel;
    btmesa29: TUnimButton;
    pnmesa32: TUnimContainerPanel;
    btmesa32: TUnimButton;
    pnmesa31: TUnimContainerPanel;
    btmesa31: TUnimButton;
    pnmesa30: TUnimContainerPanel;
    btmesa30: TUnimButton;
    UnimContainerPanel13: TUnimContainerPanel;
    pnmesa25: TUnimContainerPanel;
    btmesa25: TUnimButton;
    pnmesa28: TUnimContainerPanel;
    btmesa28: TUnimButton;
    pnmesa27: TUnimContainerPanel;
    btmesa27: TUnimButton;
    pnmesa26: TUnimContainerPanel;
    btmesa26: TUnimButton;
    UnimContainerPanel18: TUnimContainerPanel;
    pnmesa21: TUnimContainerPanel;
    btmesa21: TUnimButton;
    pnmesa24: TUnimContainerPanel;
    btmesa24: TUnimButton;
    pnmesa23: TUnimContainerPanel;
    btmesa23: TUnimButton;
    pnmesa22: TUnimContainerPanel;
    btmesa22: TUnimButton;
    UnimContainerPanel23: TUnimContainerPanel;
    pnmesa17: TUnimContainerPanel;
    btmesa17: TUnimButton;
    pnmesa20: TUnimContainerPanel;
    btmesa20: TUnimButton;
    pnmesa19: TUnimContainerPanel;
    btmesa19: TUnimButton;
    pnmesa18: TUnimContainerPanel;
    btmesa18: TUnimButton;
    UnimContainerPanel28: TUnimContainerPanel;
    pnmesa13: TUnimContainerPanel;
    btmesa13: TUnimButton;
    pnmesa16: TUnimContainerPanel;
    btmesa16: TUnimButton;
    pnmesa15: TUnimContainerPanel;
    btmesa15: TUnimButton;
    pnmesa14: TUnimContainerPanel;
    btmesa14: TUnimButton;
    UnimContainerPanel33: TUnimContainerPanel;
    pnmesa9: TUnimContainerPanel;
    btmesa9: TUnimButton;
    pnmesa12: TUnimContainerPanel;
    btmesa12: TUnimButton;
    pnmesa11: TUnimContainerPanel;
    btmesa11: TUnimButton;
    pnmesa10: TUnimContainerPanel;
    btmesa10: TUnimButton;
    UnimContainerPanel38: TUnimContainerPanel;
    pnmesa5: TUnimContainerPanel;
    btmesa5: TUnimButton;
    pnmesa8: TUnimContainerPanel;
    btmesa8: TUnimButton;
    pnmesa7: TUnimContainerPanel;
    btmesa7: TUnimButton;
    pnmesa6: TUnimContainerPanel;
    btmesa6: TUnimButton;
    UnimContainerPanel3: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    btvoltar: TUnimButton;
    UnimContainerPanel4: TUnimContainerPanel;
    btmesa_outras: TUnimButton;
    UnimContainerPanel5: TUnimContainerPanel;
    UniSweetAlert_addmesa: TUniSweetAlert;
    procedure btmesa1Click(Sender: TObject);
    procedure btmesa2Click(Sender: TObject);
    procedure btmesa3Click(Sender: TObject);
    procedure btmesa4Click(Sender: TObject);
    procedure Timer_Atu_mesasTimer(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure btmesa5Click(Sender: TObject);
    procedure btmesa6Click(Sender: TObject);
    procedure btmesa7Click(Sender: TObject);
    procedure btmesa8Click(Sender: TObject);
    procedure btmesa9Click(Sender: TObject);
    procedure btmesa10Click(Sender: TObject);
    procedure btmesa11Click(Sender: TObject);
    procedure btmesa12Click(Sender: TObject);
    procedure btmesa13Click(Sender: TObject);
    procedure btmesa14Click(Sender: TObject);
    procedure btmesa15Click(Sender: TObject);
    procedure btmesa16Click(Sender: TObject);
    procedure btmesa17Click(Sender: TObject);
    procedure btmesa18Click(Sender: TObject);
    procedure btmesa19Click(Sender: TObject);
    procedure btmesa20Click(Sender: TObject);
    procedure btmesa21Click(Sender: TObject);
    procedure btmesa22Click(Sender: TObject);
    procedure btmesa23Click(Sender: TObject);
    procedure btmesa24Click(Sender: TObject);
    procedure btmesa25Click(Sender: TObject);
    procedure btmesa26Click(Sender: TObject);
    procedure btmesa27Click(Sender: TObject);
    procedure btmesa28Click(Sender: TObject);
    procedure btmesa29Click(Sender: TObject);
    procedure btmesa30Click(Sender: TObject);
    procedure btmesa31Click(Sender: TObject);
    procedure btmesa32Click(Sender: TObject);
    procedure btpedidoexpClick(Sender: TObject);
    procedure btmesa_outrasClick(Sender: TObject);
    procedure UniSweetAlert_addmesaConfirm(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function MainmForm: TMainmForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, UFrmEstoque, UFrmMovimentos,
  UFrmPedidodeVenda;

function MainmForm: TMainmForm;
begin
  Result := TMainmForm(UniMainModule.GetFormInstance(TMainmForm));
end;

procedure TMainmForm.btmesa10Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '10';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa11Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '11';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa12Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '12';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa13Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '13';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa14Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '14';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa15Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '15';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa16Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '16';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa17Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '17';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa18Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '18';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa19Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '19';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa1Click(Sender: TObject);
begin
   PeditoVendaForm.show;
   PeditoVendaForm.lbnumeromesa.Text := '1';
   PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa20Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '20';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa21Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '21';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa22Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '22';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa23Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '23';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa24Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '24';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa25Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '25';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa26Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '26';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa27Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '27';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa28Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '28';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa29Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '29';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa2Click(Sender: TObject);
begin
  PeditoVendaForm.show;
  PeditoVendaForm.lbnumeromesa.Text := '2';
  PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa30Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '30';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa31Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '31';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa32Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '32';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa3Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '3';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa4Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '4';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa5Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '5';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa6Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '6';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa7Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '7';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa8Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '8';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa9Click(Sender: TObject);
begin
PeditoVendaForm.show;
PeditoVendaForm.lbnumeromesa.Text := '9';
PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

procedure TMainmForm.btmesa_outrasClick(Sender: TObject);
begin
  UniSweetAlert_addmesa.Title            := 'Mesa';
  UniSweetAlert_addmesa.InputType        := ItText;
  UniSweetAlert_addmesa.ShowCancelButton := True;
  UniSweetAlert_addmesa.Show('Adicionar Nº');
end;

procedure TMainmForm.btpedidoexpClick(Sender: TObject);
begin
      UniMainModule.qrsequencia.Close;
      UniMainModule.qrsequencia.SQL.clear;
      UniMainModule.qrsequencia.SQL.add
      ('select GEN_ID(GEN_CLIENTE_PEDIDO_EXPRESS,1)as sequencia from RDB$DATABASE');
      UniMainModule.qrsequencia.Open;

      PeditoVendaForm.show;
      PeditoVendaForm.lbnumeromesa.Text := UniMainModule.qrsequencia.fieldbyname('sequencia').AsString;
end;

procedure TMainmForm.Timer_Atu_mesasTimer(Sender: TObject);
var
mesa : String;

begin
   Timer_Atu_mesas.Enabled := false;
   //1
    Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '1';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa1.Color := clWhite;
      btmesa1.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa1.Color := clMaroon;
      btmesa1.Font.Color := clMaroon;
     end;
     end;
     //2
     Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '2';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa2.Color := clWhite;
      btmesa2.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa2.Color := clMaroon;
      btmesa2.Font.Color := clMaroon;
     end;
     end;
     //3
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '3';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa3.Color := clWhite;
      btmesa3.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa3.Color := clMaroon;
      btmesa3.Font.Color := clMaroon;
     end;
     end;
    //4
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '4';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa4.Color := clWhite;
      btmesa4.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa4.Color := clMaroon;
      btmesa4.Font.Color := clMaroon;
     end;
     end;
    //5
    Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '5';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa5.Color := clWhite;
      btmesa5.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa5.Color := clMaroon;
      btmesa5.Font.Color := clMaroon;
     end;
     end;
     //6
     Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '6';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa6.Color := clWhite;
      btmesa6.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa6.Color := clMaroon;
      btmesa6.Font.Color := clMaroon;
     end;
     end;
     //7
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '7';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa7.Color := clWhite;
      btmesa7.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa7.Color := clMaroon;
      btmesa7.Font.Color := clMaroon;
     end;
     end;
    //8
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '8';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa8.Color := clWhite;
      btmesa8.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa8.Color := clMaroon;
      btmesa8.Font.Color := clMaroon;
     end;
     end;
     //9
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '9';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa9.Color := clWhite;
      btmesa9.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa9.Color := clMaroon;
      btmesa9.Font.Color := clMaroon;
     end;
     end;
    //10
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '10';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa10.Color := clWhite;
      btmesa10.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa10.Color := clMaroon;
      btmesa10.Font.Color := clMaroon;
     end;
     end;
    //11
    Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '11';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa11.Color := clWhite;
      btmesa11.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa11.Color := clMaroon;
      btmesa11.Font.Color := clMaroon;
     end;
     end;
     //12
     Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '12';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa12.Color := clWhite;
      btmesa12.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa12.Color := clMaroon;
      btmesa12.Font.Color := clMaroon;
     end;
     end;
     //13
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '13';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa13.Color := clWhite;
      btmesa13.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa13.Color := clMaroon;
      btmesa13.Font.Color := clMaroon;
     end;
     end;
    //14
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '14';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa14.Color := clWhite;
      btmesa14.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa14.Color := clMaroon;
      btmesa14.Font.Color := clMaroon;
     end;
     end;
    //15
    Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '15';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa15.Color := clWhite;
      btmesa15.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa15.Color := clMaroon;
      btmesa15.Font.Color := clMaroon;
     end;
     end;
     //16
     Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '16';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa16.Color := clWhite;
      btmesa16.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa16.Color := clMaroon;
      btmesa16.Font.Color := clMaroon;
     end;
     end;
     //17
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '17';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa17.Color := clWhite;
      btmesa17.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa17.Color := clMaroon;
      btmesa17.Font.Color := clMaroon;
     end;
     end;
    //18
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '18';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa18.Color := clWhite;
      btmesa18.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa18.Color := clMaroon;
      btmesa18.Font.Color := clMaroon;
     end;
     end;
     //19
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '19';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa19.Color := clWhite;
      btmesa19.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa19.Color := clMaroon;
      btmesa19.Font.Color := clMaroon;
     end;
     end;
    //20
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '20';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa20.Color := clWhite;
      btmesa20.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa20.Color := clMaroon;
      btmesa20.Font.Color := clMaroon;
     end;
     end;
     //21
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '21';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa21.Color := clWhite;
      btmesa21.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa21.Color := clMaroon;
      btmesa21.Font.Color := clMaroon;
     end;
     end;
      //22
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '22';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa22.Color := clWhite;
      btmesa22.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa22.Color := clMaroon;
      btmesa22.Font.Color := clMaroon;
     end;
     end;
      //23
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '23';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa23.Color := clWhite;
      btmesa23.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa23.Color := clMaroon;
      btmesa23.Font.Color := clMaroon;
     end;
     end;
      //24
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '24';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa24.Color := clWhite;
      btmesa24.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa24.Color := clMaroon;
      btmesa24.Font.Color := clMaroon;
     end;
     end;
      //25
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '25';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa25.Color := clWhite;
      btmesa25.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa25.Color := clMaroon;
      btmesa25.Font.Color := clMaroon;
     end;
     end;
      //26
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '26';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa26.Color := clWhite;
      btmesa26.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa26.Color := clMaroon;
      btmesa26.Font.Color := clMaroon;
     end;
     end;
      //27
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '27';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa27.Color := clWhite;
      btmesa27.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa27.Color := clMaroon;
      btmesa27.Font.Color := clMaroon;
     end;
     end;
      //28
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '28';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa28.Color := clWhite;
      btmesa28.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa28.Color := clMaroon;
      btmesa28.Font.Color := clMaroon;
     end;
     end;
      //29
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '29';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa29.Color := clWhite;
      btmesa29.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa29.Color := clMaroon;
      btmesa29.Font.Color := clMaroon;
     end;
     end;
      //30
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '30';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa30.Color := clWhite;
      btmesa30.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa30.Color := clMaroon;
      btmesa30.Font.Color := clMaroon;
     end;
     end;
      //31
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '31';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa31.Color := clWhite;
      btmesa31.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa31.Color := clMaroon;
      btmesa31.Font.Color := clMaroon;
     end;
     end;
       //32
      Begin
     UniMainModule.qrverificar_mesa.Close;
     UniMainModule.qrverificar_mesa.SQL.Clear;
     UniMainModule.qrverificar_mesa.SQL.Add(' SELECT codigo'+
     ' FROM r000001                         '+
     ' WHERE codigo = :ID                '+
     ' ORDER BY codigo                            ');
     UniMainModule.qrverificar_mesa.ParamByName('ID').asString := '32';
     UniMainModule.qrverificar_mesa.Open;

     if UniMainModule.qrverificar_mesa.IsEmpty then
     begin
      //alterar status da mesa para ocupado (verde)
      pnmesa32.Color := clWhite;
      btmesa32.Font.Color := clWhite;
     end
     else
     begin
      //alterar status da mesa para ocupado (vermenho)
      pnmesa32.Color := clMaroon;
      btmesa32.Font.Color := clMaroon;
     end;
     end;
   Timer_Atu_mesas.Enabled := true;
end;

procedure TMainmForm.UnimFormShow(Sender: TObject);
begin
  Timer_Atu_mesas.Enabled := true;
end;

procedure TMainmForm.UniSweetAlert_addmesaConfirm(Sender: TObject);
begin
   PeditoVendaForm.show;
   PeditoVendaForm.lbnumeromesa.Text := UniSweetAlert_addmesa.InputResult;
   PeditoVendaForm.lvstatus_venda.Text := 'C'
end;

initialization
  RegisterAppFormClass(TMainmForm);

end.
