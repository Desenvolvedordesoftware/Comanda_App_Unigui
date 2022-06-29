unit UFrmPedidodeVenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, uniButton, unimButton, uniPanel,
  uniGUIBaseClasses, uniSweetAlert, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniBasicGrid, uniDBGrid, unimDBListGrid, DBAccess, Uni,
  uniLabel, unimLabel, uniEdit, unimEdit, uniMultiItem, uniListBox, uniDBListBox,
  uniDBEdit, unimDBEdit;

type
  TPeditoVendaForm = class(TUnimForm)
    CntPnlTop: TUnimContainerPanel;
    UnimLabel2: TUnimLabel;
    btgravar: TUnimButton;
    P2: TUnimContainerPanel;
    UnimLabel4: TUnimLabel;
    P3: TUnimContainerPanel;
    P1: TUnimContainerPanel;
    DBListGrid: TUnimDBListGrid;
    pn2: TUnimContainerPanel;
    eddecricao: TUnimEdit;
    pn1: TUnimContainerPanel;
    btloc: TUnimButton;
    edcodproduto: TUnimEdit;
    pn3: TUnimContainerPanel;
    UnimLabel1: TUnimLabel;
    UnimLabel3: TUnimLabel;
    UnimLabel6: TUnimLabel;
    pn4: TUnimContainerPanel;
    edobs: TUnimEdit;
    UnimLabel7: TUnimLabel;
    btexcluir_itens: TUnimButton;
    btinserir_item: TUnimButton;
    lbnumeromesa: TUnimLabel;
    UniSweetAlert1: TUniSweetAlert;
    NEdit_qtde: TUnimNumberEdit;
    NEdit_vlrund: TUnimNumberEdit;
    dbcod: TUnimDBEdit;
    UnimContainerPanel1: TUnimContainerPanel;
    UnimLabel5: TUnimLabel;
    lbstatusItens_valortotal: TUnimButton;
    aviso_cancelar_item: TUniSweetAlert;
    lvstatus_venda: TUnimLabel;
    UnimButton1: TUnimButton;
    btvoltar: TUnimButton;
    edqtde: TUnimEdit;
    procedure btgravarClick(Sender: TObject);
    procedure btIncluirItemClick(Sender: TObject);
    procedure UnimFormShow(Sender: TObject);
    procedure btlocClick(Sender: TObject);
    procedure btvoltarClick(Sender: TObject);
    procedure btexcluir_itensClick(Sender: TObject);
    procedure aviso_cancelar_itemConfirm(Sender: TObject);
    procedure edqtdeChange(Sender: TObject);


  private
  procedure AtualizaListaVenda;
  procedure FormatarMoeda3(componente: TObject);

    { Private declarations }

  public

    { Public declarations }
  end;

function PeditoVendaForm: TPeditoVendaForm;
function TrocaVirgPPto(Valor: string): String;

implementation

uses
  MainModule, uniGUIApplication, UFrmAterarPrecoProduto,
  UFrmConsultarPreco, UFrmLogin, UFrmEstoque, UFrmFicha_cliente, ClassLogin;

{$R *.dfm}
function PeditoVendaForm: TPeditoVendaForm;
begin
  Result := TPeditoVendaForm(UniMainModule.GetFormInstance(TPeditoVendaForm));
end;

procedure TPeditoVendaForm.AtualizaListaVenda;
//atualizar grid
Begin
     UniMainModule.qritens.CLOSE;
     UniMainModule.qritens.SQL.CLEAR;
     UniMainModule.qritens.SQl.ADD ('select ip.cod_produto as CODIGO, p.produto, ip.unitario, SUM(ip.qtde)QTDE, SUM(ip.total)TOTAL, ip.complemento');
     UniMainModule.qritens.SQl.ADD ('from r000002 ip, c000025 p');
     UniMainModule.qritens.SQl.ADD ('where ip.cancelado = 0 and ip.cod_produto = p.codigo and cod_mesa =:cod_mesa');
     UniMainModule.qritens.ParamByName('cod_mesa').AsString := lbnumeromesa.Text;
     UniMainModule.qritens.SQl.ADD ('GROUP BY ip.cod_produto, p.codigo, p.produto, ip.unitario,ip.cod_mesa, ip.complemento,ip.cancelado');
     UniMainModule.qritens.OPEN;


     UniMainModule.qrcalcular_total_pedito.CLOSE;
     UniMainModule.qrcalcular_total_pedito.SQL.CLEAR;
     UniMainModule.qrcalcular_total_pedito.SQl.ADD ('select SUM(ip.total)TOTAL, SUM(ip.qtde)QTDE');
     UniMainModule.qrcalcular_total_pedito.SQl.ADD ('from r000002 ip');
     UniMainModule.qrcalcular_total_pedito.SQl.ADD ('where ip.cancelado = 0 and cod_mesa =:cod_mesa');
     UniMainModule.qrcalcular_total_pedito.ParamByName('cod_mesa').AsString := lbnumeromesa.Text;
     UniMainModule.qrcalcular_total_pedito.SQl.ADD ('GROUP BY ip.cod_mesa,ip.cancelado');
     UniMainModule.qrcalcular_total_pedito.OPEN;

     lbstatusItens_valortotal.Caption := 'Qtde.: '+UniMainModule.qrcalcular_total_pedito.FieldByName('QTDE').AsString+' / '+
     'Total Venda.: R$ '+UniMainModule.qrcalcular_total_pedito.FieldByName('TOTAL').AsString;
End;

procedure TPeditoVendaForm.btIncluirItemClick(Sender: TObject);
var
cod_item :String;
VQtde1   : String;
VQtde :double;
begin

   btvoltar.Enabled := false;

    if edcodproduto.Text = '' then
    Begin
            UniSweetAlert1.Title            := 'Atenção';
            UniSweetAlert1.InputType        := ItNone;
            UniSweetAlert1.AlertType        := atInfo;
            UniSweetAlert1.ShowCancelButton := False;
            UniSweetAlert1.Show('Produto não encontrado');
            edcodproduto.SetFocus;
            AtualizaListaVenda;
            exit;
     End;

     if eddecricao.Text = '' then
    Begin
            UniSweetAlert1.Title            := 'Atenção';
            UniSweetAlert1.InputType        := ItNone;
            UniSweetAlert1.AlertType        := atInfo;
            UniSweetAlert1.ShowCancelButton := False;
            UniSweetAlert1.Show('Produto não encontrado');
            edcodproduto.SetFocus;
            AtualizaListaVenda;
            exit;
     End;


     if edqtde.Text = '' then
    Begin
            UniSweetAlert1.Title            := 'Atenção';
            UniSweetAlert1.InputType        := ItNone;
            UniSweetAlert1.AlertType        := atInfo;
            UniSweetAlert1.ShowCancelButton := False;
            UniSweetAlert1.Show('Não a quatidade no produto');
            edcodproduto.SetFocus;
            AtualizaListaVenda;
            exit;
     End;

    //abertura da mesa
     Begin

      UniMainModule.qrincluir_Itens.Close;
      UniMainModule.qrincluir_Itens.SQL.Clear;
      UniMainModule.qrincluir_Itens.SQL.Add('SELECT PED.* FROM r000001 PED WHERE CODIGO =:COD_M');
      UniMainModule.qrincluir_Itens.ParamByName('COD_M').AsString := lbnumeromesa.Text;
      UniMainModule.qrincluir_Itens.Open;

      if UniMainModule.qrincluir_Itens.IsEmpty then
      Begin
       UniMainModule.qrincluir_Itens.Insert;
       UniMainModule.qrincluir_Itens.FieldByName('codigo').AsString := lbnumeromesa.Text;
       UniMainModule.qrincluir_Itens.FieldByName('data').AsDateTime := date;
       UniMainModule.qrincluir_Itens.FieldByName('hora').asstring := timetostr(time);
       UniMainModule.qrincluir_Itens.FieldByName('cod_funcionario').AsString := FrmLoginForm.EdEmail.Text;;
       UniMainModule.qrincluir_Itens.FieldByName('cliente_autorizou').AsString := '2';
       UniMainModule.qrincluir_Itens.Post;
      End;

      end;


     //ADD OS ITENS NO BANCO
     //add codigo venda
     Begin
      UniMainModule.qrsequencia.Close;
      UniMainModule.qrsequencia.SQL.clear;
      UniMainModule.qrsequencia.SQL.add
      ('select GEN_ID(gen_r000002_id,1)as sequencia from RDB$DATABASE');
      UniMainModule.qrsequencia.Open;
      cod_item := UniMainModule.qrsequencia.fieldbyname('sequencia').AsString;


      UniMainModule.qrincluir_Itens.Close;
      UniMainModule.qrincluir_Itens.SQL.Clear;
      UniMainModule.qrincluir_Itens.SQL.Add('SELECT PED.* FROM r000002 PED');
      UniMainModule.qrincluir_Itens.Open;

      FormatSettings.DecimalSeparator := ',';

      VQtde1 := TrocaVirgPPto(edqtde.Text);
      edqtde.Text := VQtde1;

      NEdit_qtde.Text := edqtde.Text;


      Begin
       UniMainModule.qrincluir_Itens.Insert;
       UniMainModule.qrincluir_Itens.FieldByName('codigo').AsString := cod_item;
       UniMainModule.qrincluir_Itens.FieldByName('cod_mesa').AsString := lbnumeromesa.Text;
       UniMainModule.qrincluir_Itens.FieldByName('cod_produto').AsString := UniMainModule.Zerar(edcodproduto.Text,6);
       UniMainModule.qrincluir_Itens.FieldByName('impresso').AsString := 'P';
       UniMainModule.qrincluir_Itens.FieldByName('qtde').AsString := VQtde1;//edqtde.Text;
       UniMainModule.qrincluir_Itens.FieldByName('unitario').AsFloat := UniMainModule.qrproduto.FieldByName('precovenda').AsFloat;
       UniMainModule.qrincluir_Itens.FieldByName('total').AsFloat :=
       NEdit_qtde.Value * UniMainModule.qrproduto.FieldByName('precovenda').AsFloat;
       UniMainModule.qrincluir_Itens.FieldByName('complemento').AsString := edobs.Text;
       UniMainModule.qrincluir_Itens.FieldByName('cancelado').AsString := '0';
       UniMainModule.qrincluir_Itens.FieldByName('atendente').AsString := FrmLoginForm.EdEmail.Text;
       UniMainModule.qrincluir_Itens.Post;
      End;

      //limpar os campos
      Begin
      eddecricao.Text   :='';
      edcodproduto.Text :='';
      edqtde.Text       :='1';
      NEdit_qtde.Text   :='';
      edobs.Text        :='';
      End;

      end;
    edcodproduto.SetFocus;
   //atualizar grid
    AtualizaListaVenda;
end;

procedure TPeditoVendaForm.btlocClick(Sender: TObject);
begin
     if edcodproduto.Text = '' then
     Begin
      EstoqueForm.Show;
     End
     else
     Begin
      UniMainModule.qrproduto.CLOSE;
      UniMainModule.qrproduto.SQL.CLEAR;
      UniMainModule.qrproduto.SQl.ADD ('select prod.*');
      UniMainModule.qrproduto.SQl.ADD ('from c000025 prod');
      UniMainModule.qrproduto.SQl.ADD ('where codigo =:cod');
      UniMainModule.qrproduto.ParamByName('cod').AsString := UniMainModule.Zerar(edcodproduto.Text,6);
      UniMainModule.qrproduto.OPEN;
       if UniMainModule.qrproduto.recordcount > 0 then
       Begin
        eddecricao.Text := UniMainModule.qrproduto.FieldByName('produto').AsString;
        edqtde.Text := '1';

        NEdit_vlrund.Value := UniMainModule.qrproduto.FieldByName('PRECOVENDA').AsFloat;
        edqtde.SetFocus;
        exit;
       End
       else
       Begin
         UniSweetAlert1.Title            := 'Atenção';
         UniSweetAlert1.InputType        := ItNone;
         UniSweetAlert1.AlertType        := atInfo;
         UniSweetAlert1.ShowCancelButton := False;
         UniSweetAlert1.Show('Produto não encontrado');
         edcodproduto.SetFocus;
         exit;
       End;

     End;
end;

procedure TPeditoVendaForm.UnimFormShow(Sender: TObject);
begin
     //atualizar grid
   AtualizaListaVenda;
   if btvoltar.Enabled = false then
   Begin
     btvoltar.Enabled := true;
   End;


   edcodproduto.SetFocus;
end;

procedure TPeditoVendaForm.btvoltarClick(Sender: TObject);
begin
   Close;
end;

procedure TPeditoVendaForm.edqtdeChange(Sender: TObject);
begin
    TThread.Queue(Nil,
     Procedure
     begin
          FormatarMoeda3( Sender );
     End);
end;
procedure TPeditoVendaForm.FormatarMoeda3(componente: TObject);
var
   valor_str  : String;
   valor  : double;
begin
    //if Componente is edqtde.Text then
{    begin
         valor_str := edqtde.Text;

         // Retira pontos e virgulas...
         valor_str := Trim( StringReplace( valor_str, '.', '', [rfReplaceAll, rfIgnoreCase] ) ) ;
         valor_str := Trim( StringReplace( valor_str, ',', '', [rfReplaceAll, rfIgnoreCase] ) ) ;

         // Inserindo 2 casas decimais...
         valor := StrToFloat( valor_str ) ;
         valor := ( valor / 100 ) ;


         // Retornando valor tratado ao edit...
         edqtde( Componente ).Text := FormatFloat( '###,##0.00', valor ) ;

         // Reposiciona cursor...
         //edqtde( Componente ).SelStart := Length( edqtde( Componente ).Text );
    end;}
end;

procedure TPeditoVendaForm.aviso_cancelar_itemConfirm(Sender: TObject);
begin
 //cancelar item do pedido

  //localizar item
  Begin
  UniMainModule.qrlocalizar_item.Close;
  UniMainModule.qrlocalizar_item.SQL.Clear;
  UniMainModule.qrlocalizar_item.SQL.Add('select codigo');
  UniMainModule.qrlocalizar_item.SQL.Add('from r000002');
  UniMainModule.qrlocalizar_item.SQL.Add('where cancelado = 0 and cod_mesa =:codmesa and cod_produto =:cod');
  UniMainModule.qrlocalizar_item.ParamByName('cod').AsString := dbcod.Text;
  UniMainModule.qrlocalizar_item.ParamByName('codmesa').AsString := lbnumeromesa.Text;
  UniMainModule.qrlocalizar_item.SQL.Add('order by codigo');
  UniMainModule.qrlocalizar_item.open;
  End;
  //cancelar item
  Begin

   UniMainModule.qrexcluir_item.Close;
   UniMainModule.qrexcluir_item.SQL.Clear;
   UniMainModule.qrexcluir_item.SQL.Add(' UPDATE r000002 SET CANCELADO = 1 where codigo = :id ');
   UniMainModule.qrexcluir_item.ParamByName('ID').AsString := UniMainModule.qrlocalizar_item.FieldByName('codigo').AsString;
   UniMainModule.qrexcluir_item.ExecSQL;

   UniMainModule.qrexcluir_item.Close;
   UniMainModule.qrexcluir_item.SQL.Clear;
   UniMainModule.qrexcluir_item.SQL.Add(' UPDATE r000002 SET IMPRESSO = :N where codigo = :id ');
   UniMainModule.qrexcluir_item.ParamByName('N').AsString := 'N';
   UniMainModule.qrexcluir_item.ParamByName('ID').AsString := UniMainModule.qrlocalizar_item.FieldByName('codigo').AsString;
   UniMainModule.qrexcluir_item.ExecSQL;

   UniMainModule.qrexcluir_item.Close;
   UniMainModule.qrexcluir_item.SQL.Clear;
   UniMainModule.qrexcluir_item.SQL.Add(' UPDATE r000002 SET COMPLEMENTO = :CANC where codigo = :id ');
   UniMainModule.qrexcluir_item.ParamByName('CANC').AsString :='ITEM CANCELADO';
   UniMainModule.qrexcluir_item.ParamByName('ID').AsString := UniMainModule.qrlocalizar_item.FieldByName('codigo').AsString;
   UniMainModule.qrexcluir_item.ExecSQL;
  End;

  Begin
  UniMainModule.qrExecuta.Close;
  UniMainModule.qrExecuta.SQL.Clear;
  UniMainModule.qrExecuta.SQL.Add(' update r000001 set CLIENTE_AUTORIZOU = :COD ');
  UniMainModule.qrExecuta.SQL.Add(' WHERE CODIGO =:ID ');
  UniMainModule.qrExecuta.ParamByName('ID').AsString := lbnumeromesa.Text;
  UniMainModule.qrExecuta.ParamByName('COD').AsString := '1';
  UniMainModule.qrExecuta.ExecSQL;
  End;


  Begin
   UniSweetAlert1.Title            := 'Atenção';
   UniSweetAlert1.InputType        := ItNone;
   UniSweetAlert1.ShowCancelButton := False;
   UniSweetAlert1.Show('Item cancelado com sucesso!') ;

   End;

  //atualizar grid
   AtualizaListaVenda;
end;

procedure TPeditoVendaForm.btexcluir_itensClick(Sender: TObject);
begin

    aviso_cancelar_item.Title             := 'Atenção';
    aviso_cancelar_item.InputType         := ItNone;
    aviso_cancelar_item.AlertType         := atInfo;
    aviso_cancelar_item.ConfirmButtonText := 'Sim';
    aviso_cancelar_item.CancelButtonText  := 'Não';
    aviso_cancelar_item.ShowCancelButton  := True;
    aviso_cancelar_item.ShowConfirmButton := True;
    aviso_cancelar_item.Show('Cancelar este item?');


end;

procedure TPeditoVendaForm.btgravarClick(Sender: TObject);
var
Numero : String;
begin

   //abertura da mesa
     Begin

      UniMainModule.qrincluir_Itens.Close;
      UniMainModule.qrincluir_Itens.SQL.Clear;
      UniMainModule.qrincluir_Itens.SQL.Add('SELECT PED.* FROM r000001 PED WHERE CODIGO =:COD_M');
      UniMainModule.qrincluir_Itens.ParamByName('COD_M').AsString := lbnumeromesa.Text;
      UniMainModule.qrincluir_Itens.Open;

      if UniMainModule.qrincluir_Itens.IsEmpty then
      Begin
         UniSweetAlert1.Title            := 'Atenção';
         UniSweetAlert1.InputType        := ItNone;
         UniSweetAlert1.AlertType        := atInfo;
         UniSweetAlert1.ShowCancelButton := False;
         UniSweetAlert1.Show('Não a itens nessa mesa!');
         edcodproduto.SetFocus;
         exit;
      End;

      end;

    if lvstatus_venda.Text = 'P' then
    Begin
     ficha_clienteForm.show;
     ficha_clienteForm.ednumero_venda.Text := lbnumeromesa.Text;
     End
     else
    Begin

        try
        UniMainModule.qrfinalizar_pedido.Close;
        UniMainModule.qrfinalizar_pedido.SQL.Clear;
        UniMainModule.qrfinalizar_pedido.SQL.Add(' SELECT CODIGO, COD_MESA, IMPRESSO '+
        ' FROM r000002                                            '+
        ' WHERE COD_MESA = :ID                                    '+
        ' ORDER BY CODIGO                                         ');
        UniMainModule.qrfinalizar_pedido.ParamByName('ID').asString := lbnumeromesa.Text;
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
          UniMainModule.qrfinalizar_pedido.ParamByName('ID').asString := lbnumeromesa.Text;
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
          UniMainModule.qrExecuta.ParamByName('ID').AsString := lbnumeromesa.Text;
          UniMainModule.qrExecuta.ParamByName('COD').AsString := '1';
          UniMainModule.qrExecuta.ExecSQL;

          UniSweetAlert1.Title            := 'Atenção';
          UniSweetAlert1.InputType        := ItNone;
          UniSweetAlert1.ShowCancelButton := False;
          UniSweetAlert1.Show('Pedido realizado com sucesso.') ;

       end;

     End;

   Close;
end;
function TrocaVirgPPto(Valor: string): String;
   var i:integer;
begin
      if Valor <>'' then begin
        for i := 0 to Length(Valor) do begin
            if Valor[i]='.' then Valor[i]:=',';

        end;
     end;
     Result := valor;
end;

end.
