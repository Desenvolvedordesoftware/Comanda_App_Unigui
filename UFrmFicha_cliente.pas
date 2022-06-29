unit UFrmFicha_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniButton, unimButton, uniLabel, unimLabel, uniGUIBaseClasses, uniEdit,
  unimEdit, uniSweetAlert, uniMultiItem, unimSelect, unimDBSelect;

type
  TFicha_ClienteForm = class(TUnimForm)
    P2: TUnimContainerPanel;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    btvoltar: TUnimButton;
    P1: TUnimContainerPanel;
    pn1: TUnimContainerPanel;
    ednumero_venda: TUnimEdit;
    UnimLabel1: TUnimLabel;
    pn3: TUnimContainerPanel;
    edendereco: TUnimEdit;
    UnimContainerPanel2: TUnimContainerPanel;
    edbairro: TUnimEdit;
    UnimContainerPanel3: TUnimContainerPanel;
    ednome_cliente: TUnimEdit;
    UnimContainerPanel4: TUnimContainerPanel;
    ednomero_tel: TUnimEdit;
    UnimContainerPanel5: TUnimContainerPanel;
    edcidade: TUnimEdit;
    UnimContainerPanel6: TUnimContainerPanel;
    edobs: TUnimEdit;
    UnimContainerPanel7: TUnimContainerPanel;
    edpont_ref: TUnimEdit;
    CntPnlTop: TUnimContainerPanel;
    UnimLabel10: TUnimLabel;
    btgravar: TUnimButton;
    UniSweetAlert1: TUniSweetAlert;
    UnimContainerPanel8: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    edcod_cliente: TUnimEdit;
    edformapagamento: TUnimDBSelect;
    procedure btgravarClick(Sender: TObject);
    procedure ednomero_telExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function Ficha_ClienteForm: TFicha_ClienteForm;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, UFrmPedidodeVenda;

function Ficha_ClienteForm: TFicha_ClienteForm;
begin
  Result := TFicha_ClienteForm(UniMainModule.GetFormInstance(TFicha_ClienteForm));
end;

procedure TFicha_ClienteForm.btgravarClick(Sender: TObject);
var
cod_cli : String;
begin
     if ednomero_tel.Text = '' then
     Begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('É obrigatório colocar número de telefone');
       ednomero_tel.SetFocus;
       exit;
     End;

      if ednome_cliente.Text = '' then
     Begin
       UniSweetAlert1.Title            := 'Atenção';
       UniSweetAlert1.InputType        := ItNone;
       UniSweetAlert1.AlertType        := atInfo;
       UniSweetAlert1.ShowCancelButton := False;
       UniSweetAlert1.Show('É obrigatório colocar nome do cliente');
       ednome_cliente.SetFocus;
       exit;
     End;

    //VERIFICAR SER O CLIENTE JA ESTA CADASTRADO SER NAO CADASTRA
     Begin

      UniMainModule.qrcliente.Close;
      UniMainModule.qrcliente.SQL.Clear;
      UniMainModule.qrcliente.SQL.Add('SELECT CLI.* FROM CLIENTE_PEDIDO_EXPRESS CLI WHERE TELEFONE =:TEL');
      UniMainModule.qrcliente.ParamByName('TEL').AsString := ednomero_tel.Text;
      UniMainModule.qrcliente.Open;

      if UniMainModule.qrcliente.IsEmpty then
      Begin
        UniMainModule.qrsequencia.Close;
        UniMainModule.qrsequencia.SQL.clear;
        UniMainModule.qrsequencia.SQL.add
        ('select GEN_ID(GEN_CLIENTEPDEX_ID,1)as sequencia from RDB$DATABASE');
        UniMainModule.qrsequencia.Open;

        UniMainModule.qrincluir_cliente.Close;
        UniMainModule.qrincluir_cliente.SQL.Clear;
        UniMainModule.qrincluir_cliente.SQL.Add('SELECT CLI.* FROM CLIENTE_PEDIDO_EXPRESS CLI');
        UniMainModule.qrincluir_cliente.Open;

        cod_cli := UniMainModule.qrsequencia.fieldbyname('sequencia').AsString;

        edcod_cliente.Text  := cod_cli;

       UniMainModule.qrincluir_cliente.Insert;
       UniMainModule.qrincluir_cliente.FieldByName('codigo').AsString := cod_cli;
       UniMainModule.qrincluir_cliente.FieldByName('data').AsDateTime := date;
       UniMainModule.qrincluir_cliente.FieldByName('telefone').asstring := ednomero_tel.Text;
       UniMainModule.qrincluir_cliente.FieldByName('nomecliente').AsString := ednome_cliente.Text;
       UniMainModule.qrincluir_cliente.FieldByName('endereco').AsString := edendereco.Text;
       UniMainModule.qrincluir_cliente.FieldByName('bairro').AsString := edbairro.Text;
       UniMainModule.qrincluir_cliente.FieldByName('cidade').AsString := edcidade.Text;
       UniMainModule.qrincluir_cliente.FieldByName('ponto_referencia').AsString := edpont_ref.Text;
       UniMainModule.qrincluir_cliente.FieldByName('obs').AsString := edobs.Text;
       UniMainModule.qrincluir_cliente.Post;

       UniMainModule.qrsequencia.Next;
       UniMainModule.qrincluir_cliente.Next
      End;

      end;



    Begin

        try
        UniMainModule.qrfinalizar_pedido.Close;
        UniMainModule.qrfinalizar_pedido.SQL.Clear;
        UniMainModule.qrfinalizar_pedido.SQL.Add(' SELECT CODIGO, COD_MESA, IMPRESSO '+
        ' FROM r000002                                            '+
        ' WHERE COD_MESA = :ID                                    '+
        ' ORDER BY CODIGO                                         ');
        UniMainModule.qrfinalizar_pedido.ParamByName('ID').asString := ednumero_venda.Text;
        UniMainModule.qrfinalizar_pedido.Open;
        UniMainModule.qrfinalizar_pedido.First;

        while not UniMainModule.qrfinalizar_pedido.Eof do
        begin
          UniMainModule.qrfinalizar_pedido.Close;
          UniMainModule.qrfinalizar_pedido.SQL.Clear;
          UniMainModule.qrfinalizar_pedido.SQL.Add(' SELECT CODIGO, COD_MESA, IMPRESSO '+
          ' FROM r000002                                            '+
          ' WHERE COD_MESA = :ID and IMPRESSO = :P                  '+
          ' ORDER BY CODIGO                                         ');
          UniMainModule.qrfinalizar_pedido.ParamByName('ID').asString := ednumero_venda.Text;
          UniMainModule.qrfinalizar_pedido.ParamByName('P').asString := 'P';
          UniMainModule.qrfinalizar_pedido.Open;
          UniMainModule.qrfinalizar_pedido.First;

          if not UniMainModule.qrfinalizar_pedido.IsEmpty then//if dm.RdwIntegra.FieldByName('IMPRESSO').asString = 'P' then
          Begin
          UniMainModule.qrExecuta.Close;
          UniMainModule.qrExecuta.SQL.Clear;
          UniMainModule.qrExecuta.SQL.Add(' update r000002 set IMPRESSO =:N where CODIGO = :COD ');
          UniMainModule.qrExecuta.ParamByName('N').AsString := 'N';
          UniMainModule.qrExecuta.ParamByName('COD').AsString := UniMainModule.qrfinalizar_pedido.FieldByName('CODIGO').asString;
          UniMainModule.qrExecuta.ExecSQL;

          end;

         end;


        finally

          UniMainModule.qrExecuta.Close;
          UniMainModule.qrExecuta.SQL.Clear;
          UniMainModule.qrExecuta.SQL.Add(' update r000001 set CLIENTE_AUTORIZOU = :COD ');
          UniMainModule.qrExecuta.SQL.Add(' WHERE CODIGO =:ID ');
          UniMainModule.qrExecuta.ParamByName('ID').AsString := ednumero_venda.Text;
          UniMainModule.qrExecuta.ParamByName('COD').AsString := '1';
          UniMainModule.qrExecuta.ExecSQL;

          UniMainModule.qrfinalizar_pedido.Next;

       end;

        Begin
          UniMainModule.qrExecuta.Close;
          UniMainModule.qrExecuta.SQL.Clear;
          UniMainModule.qrExecuta.SQL.Add(' update r000001 set ');
          UniMainModule.qrExecuta.SQL.Add(' COD_CLIENTE =:COD_CLI, CLIENTE = :NOME, STATUS =:ST, forma_de_pagamento =:FP, ');
          UniMainModule.qrExecuta.SQL.Add(' ENDERECO =:END, OBS =:OBS, PONTO_REFERENCIA =:PR ');
          UniMainModule.qrExecuta.SQL.Add(' WHERE CODIGO =:ID ');
          UniMainModule.qrExecuta.ParamByName('ID').AsString := ednumero_venda.Text;
          UniMainModule.qrExecuta.ParamByName('COD_CLI').AsString := edcod_cliente.Text;
          UniMainModule.qrExecuta.ParamByName('NOME').AsString := ednome_cliente.Text;
          UniMainModule.qrExecuta.ParamByName('FP').AsString := edformapagamento.Text;
          UniMainModule.qrExecuta.ParamByName('END').AsString := edendereco.Text;
          UniMainModule.qrExecuta.ParamByName('OBS').AsString := edobs.Text;
          UniMainModule.qrExecuta.ParamByName('PR').AsString := edpont_ref.Text;
          UniMainModule.qrExecuta.ParamByName('ST').AsString := 'N';
          UniMainModule.qrExecuta.ExecSQL;


        End;

        UniMainModule.Connec.Commit;
     End;

     Begin
      UniSweetAlert1.Title            := 'Atenção';
      UniSweetAlert1.InputType        := ItNone;
      UniSweetAlert1.ShowCancelButton := False;
      UniSweetAlert1.Show('Pedido e dados do cliente realizado com sucesso.') ;
     End;

  close;

end;

procedure TFicha_ClienteForm.ednomero_telExit(Sender: TObject);
begin
//VERIFICAR SER O CLIENTE JA ESTA CADASTRADO
     Begin

      UniMainModule.qrcliente.Close;
      UniMainModule.qrcliente.SQL.Clear;
      UniMainModule.qrcliente.SQL.Add('SELECT CLI.* FROM CLIENTE_PEDIDO_EXPRESS CLI WHERE TELEFONE =:TEL');
      UniMainModule.qrcliente.ParamByName('TEL').AsString := ednomero_tel.Text;
      UniMainModule.qrcliente.Open;

      if UniMainModule.qrincluir_Itens.recordcount > 0 then
      Begin
        ednome_cliente.Text := UniMainModule.qrcliente.FieldByName('NOMECLIENTE').AsString;
        edendereco.Text     := UniMainModule.qrcliente.FieldByName('ENDERECO').AsString;
        edbairro.Text       := UniMainModule.qrcliente.FieldByName('BAIRRO').AsString;
        edcidade.Text       := UniMainModule.qrcliente.FieldByName('CIDADE').AsString;
        edpont_ref.Text     := UniMainModule.qrcliente.FieldByName('PONTO_REFERENCIA').AsString;
        edobs.Text          := UniMainModule.qrcliente.FieldByName('OBS').AsString;
        edcod_cliente.Text  := UniMainModule.qrcliente.FieldByName('CODIGO').AsString;
      End;
      UniMainModule.qrcliente.Next;
      end;
end;

end.
