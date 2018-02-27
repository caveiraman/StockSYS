unit uPesFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uDados, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TtelaPesFor = class(TForm)
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnPesquisa: TSpeedButton;
    editBusca: TEdit;
    cbCategoria: TComboBox;
    procedure btnPesquisaClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaPesFor: TtelaPesFor;

implementation

{$R *.dfm}

procedure TtelaPesFor.btnPesquisaClick(Sender: TObject);
begin
  if editBusca.Text = '' then
  begin
    telaDados.qryFornecedores.Close;
    telaDados.qryFornecedores.SQL.Clear;
    telaDados.qryFornecedores.SQL.Add('select * from fornecedor');
    telaDados.qryFornecedores.Open;
  end else
  begin
    telaDados.qryFornecedores.Close;
    telaDados.qryFornecedores.SQL.Clear;
    telaDados.qryFornecedores.SQL.Add('select * from fornecedor where ');

      case cbCategoria.ItemIndex of
        0:telaDados.qryFornecedores.SQL.Add('NOME like :pDados');
        1:telaDados.qryFornecedores.SQL.Add('CNPJ_cpf = :pDados ');
        2:telaDados.qryFornecedores.SQL.Add('INSC_RG = :pDados ');
        3:telaDados.qryFornecedores.SQL.Add('CIDADE_END like :pDados');
      end;
    telaDados.qryFornecedores.Params.ParamByName('pDados').asString := editBusca.Text + '%';

    telaDados.qryFornecedores.Open;
end;

end;

procedure TtelaPesFor.DBGrid1DblClick(Sender: TObject);
var num : string;
begin
  num := DBGrid1.Columns.Items[5].Field.AsString;
                              
  telaDados.tblFornecedores.Locate('CNPJ_CPF', num , []);

  telaPesFor.Close;;
end;

end.