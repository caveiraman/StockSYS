unit uLancItens;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDados, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, ActnList;

type
  TtelaLancItens = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitCancelar: TBitBtn;
    Label1: TLabel;
    editId: TDBEdit;
    Label2: TLabel;
    editDesc: TDBEdit;
    Label3: TLabel;
    editQuant: TDBEdit;
    Label4: TLabel;
    editValor: TDBEdit;
    Label5: TLabel;
    editDescnt: TDBEdit;
    Label6: TLabel;
    editAcr: TDBEdit;
    Label7: TLabel;
    editVrt: TDBEdit;
    editIdPedido: TDBEdit;
    ActionList1: TActionList;
    Confirmar: TAction;
    Cancelar: TAction;
    SpeedButton1: TSpeedButton;
    procedure BitCancelarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure editIdExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure editAcrExit(Sender: TObject);
    procedure ConfirmarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure editDescntExit(Sender: TObject);
    procedure editValorExit(Sender: TObject);
    procedure editQuantExit(Sender: TObject);
    procedure BitBtn1Exit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
     
  private
    { Private declarations }
    function calculaTotal(quant, vrT, Acr, descnt : double): double;
    procedure calculaItens();
  public
    { Public declarations }
    procedure pegaTipo(a: integer);
  end;

var
  telaLancItens: TtelaLancItens;
  quant, valor, Acr, descnt: double;
  tipo : integer;

implementation

uses DB, uLancPedidos, Math, uPesItens, uLancCompras;

{$R *.dfm}

procedure TtelaLancItens.pegaTipo(a: integer);
begin
  tipo := a;
end;

function TtelaLancItens.calculaTotal(quant, vrT, Acr, descnt: double) : double;
begin
  Result := ((quant*vrT)+Acr)-descnt;
end;

procedure TtelaLancItens.BitCancelarClick(Sender: TObject);
begin
  telaLancItens.close;
end;

procedure TtelaLancItens.BitBtn1Click(Sender: TObject);
begin
{
  telaDados.tblPedidosItensID_PEDIDO.Value := StrToInt(telaLancPedidos.editId.Text);

   telaDados.cdsTempItensIDPED.Value := StrToInt(telaLancPedidos.editId.Text);           {
  telaDados.tblPedidosItens.Post;
  telaDados.cdsTempItens.Post;


  telaDados.tblPedidosVALOR_TOTAL.Value := telaDados.tblPedidosVALOR_TOTAL.Value + telaDados.cdsTempItensVRT.Value;
  telaDados.tblPedidosVALOR.Value := telaDados.tblPedidosVALOR_TOTAL.Value;


  telaDados.cdsTempItensID_PEDIDO.Value := StrToInt(telaLancPedidos.editId.Text);
  telaDados.cdsTempItensID_PRODUTO.Value := StrToInt(editId.Text);
  telaDados.cdsTempItensDESCRICAO.Value  := editDesc.Text;
  telaDados.cdsTempItensQUANTIDADE.Value := StrToInt(editQuant.Text);
  telaDados.cdsTempItensVALOR.Value      := StrToFloat(editValor.Text);
  telaDados.cdsTempItensDESCONTO.Value   := StrToFloat(editDescnt.Text);
  telaDados.cdsTempItensACRESCIMO.Value  := StrToFloat(editAcr.Text);
  telaDados.cdsTempItensVALOR_TOTAL.Value := StrToFloat(editVrt.Text);
  telaDados.cdsTempItens.Post;

  telaLancItens.Close;
   }
end;

procedure TtelaLancItens.editIdExit(Sender: TObject);
begin
  editIdPedido.Text := telaDados.tblPedidosID.AsString;

  if editId.Text <> '' then
  begin
    telaDados.qryProdutos.Close;
    telaDados.qryProdutos.SQL.Clear;
    telaDados.qryProdutos.SQL.Add('Select * from produtos where id = ');
    telaDados.qryProdutos.SQL.Add(editId.Text);
    telaDados.qryProdutos.Open;

    telaLancItens.Refresh;

    editDesc.Text := telaDados.qryProdutos.FieldByName('descricao').AsString;
    editValor.Text :=  telaDados.qryProdutos.FieldByName('preco_venda').AsString;
  end;
end;

procedure TtelaLancItens.FormShow(Sender: TObject);
var
id : integer;
begin
  telaDados.FormataCampos;
                                   {
  telaDados.tblPedidosItens.Insert; }
  {if tipo = 0 then begin
  telaDados.cdsTempItens.Insert;
  end else begin
  telaDados.cdsCTempItens.Insert;
  end;}
  
  editDescnt.Text := '0';
  editAcr.Text := '0';

  editQuant.SetFocus;
end;

procedure TtelaLancItens.editAcrExit(Sender: TObject);
begin
  if editDescnt.Text = '' then editDescnt.Text := '0';
  if editAcr.Text = '' then editAcr.Text := '0';
  editVrt.Text :=  FloatToStr((StrToFloat(editQuant.Text)*StrToFloat(editValor.Text))
                              -StrToFloat(editDescnt.Text)+StrToFloat(editAcr.Text));
end;

procedure TtelaLancItens.ConfirmarExecute(Sender: TObject);
begin
  if tipo = 0 then
  begin
    telaDados.tblPedidosItens.Open;
    {telaDados.tblPedidosItensID_PEDIDO.Value := StrToInt(telaLancPedidos.editId.Text);
     }
    telaDados.cdsTempItensIDPED.Value := StrToInt(telaLancPedidos.editId.Text);           {
    telaDados.tblPedidosItens.Post;}
    telaDados.cdsTempItens.Post;        

    {telaDados.tblPedidosVALOR_TOTAL.Value := telaDados.tblPedidosVALOR_TOTAL.Value +
                                            telaDados.cdsTempItensVRT.Value - telaDados.cdsTempItensVALOR.Value;
    telaDados.tblPedidosVALOR.Value := telaDados.tblPedidosVALOR_TOTAL.Value;}

    {
    telaDados.cdsTempItensID_PEDIDO.Value := StrToInt(telaLancPedidos.editId.Text);
    telaDados.cdsTempItensID_PRODUTO.Value := StrToInt(editId.Text);
    telaDados.cdsTempItensDESCRICAO.Value  := editDesc.Text;
    telaDados.cdsTempItensQUANTIDADE.Value := StrToInt(editQuant.Text);
    telaDados.cdsTempItensVALOR.Value      := StrToFloat(editValor.Text);
    telaDados.cdsTempItensDESCONTO.Value   := StrToFloat(editDescnt.Text);
    telaDados.cdsTempItensACRESCIMO.Value  := StrToFloat(editAcr.Text);
    telaDados.cdsTempItensVALOR_TOTAL.Value := StrToFloat(editVrt.Text);
    telaDados.cdsTempItens.Post;
   }
  end else begin
    telaDados.tblCompraItens.Open;
    telaDados.cdsTempItensIDPED.Value := StrToInt(telaLancCompras.editId.Text);
    {telaDados.tblPedidosItensID_PEDIDO.Value := StrToInt(telaLancPedidos.editId.Text);

    telaDados.cdsCTempItensID_COMPRA.Value   := StrToInt(telaLancCompras.editId.Text);
    telaDados.cdsCTempItensID_PRODUTO.Value  := StrToInt(editId.Text);
    telaDados.cdsCTempItensDESCRICAO.Value   := editDesc.Text;
    telaDados.cdsCTempItensQUANTIDADE.Value  := StrToInt(editQuant.Text);
    telaDados.cdsCTempItensVALOR.Value       := StrToFloat(editValor.Text);
    telaDados.cdsCTempItensDESCONTO.Value    := StrToFloat(editDescnt.Text);
    telaDados.cdsCTempItensACRESCIMO.Value   := StrToFloat(editAcr.Text);
    telaDados.cdsCTempItensVALOR_TOTAL.Value := StrToFloat(editVrt.Text);

    telaDados.tblPedidosItens.Post;                                       }
    telaDados.cdsTempItens.Post;
  end;
  telaLancItens.Close;
end;

procedure TtelaLancItens.CancelarExecute(Sender: TObject);
begin
  telaLancItens.close;
end;

procedure TtelaLancItens.editDescntExit(Sender: TObject);
begin
  calculaItens();
end;

procedure TtelaLancItens.editValorExit(Sender: TObject);
begin
  calculaItens();
end;

procedure TtelaLancItens.editQuantExit(Sender: TObject);
begin
  calculaItens();
end;

procedure TtelaLancItens.calculaItens;
begin
  if editDesc.Text = '' then begin
    ShowMessage('Por Favor, selecione um produto');
  end;

  if editQuant.Text = '' then begin
    editQuant.Text := '0';
    editQuant.SelectAll;
  end;

  if editDescnt.Text = '' then editDescnt.Text := '0';
  if editAcr.Text = '' then editAcr.Text := '0';
  editVrt.Text :=  FloatToStr((StrToFloat(editQuant.Text)*StrToFloat(editValor.Text))
                              -StrToFloat(editDescnt.Text)+StrToFloat(editAcr.Text));
end;

procedure TtelaLancItens.BitBtn1Exit(Sender: TObject);
begin
  calculaItens();
end;

procedure TtelaLancItens.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TtelaPesItens, telaPesItens);
  telaPesItens.Show;
end;

procedure TtelaLancItens.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if tipo =0 then telaLancPedidos.edtItem.SetFocus;
end;

end.
