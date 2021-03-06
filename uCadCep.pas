unit uCadCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ACBrBase, ACBrSocket, ACBrCEP, Buttons, ActnList, StdCtrls,
  Mask, DBCtrls, ExtCtrls;

type
  TtelaCadCep = class(TForm)
    SpeedButton1: TSpeedButton;
    ACBrCEP1: TACBrCEP;
    Panel1: TPanel;
    Label1: TLabel;
    edtCep: TDBEdit;
    Label2: TLabel;
    edtEnd: TDBEdit;
    Label3: TLabel;
    edtCompl: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    btnSalvar: TSpeedButton;
    btnNovo: TSpeedButton;
    ActionList1: TActionList;
    actInserir: TAction;
    actSalvar: TAction;
    actFechar: TAction;
    cbUf: TComboBox;
    cbCidade: TComboBox;
    cbBairro: TComboBox;
    procedure SpeedButton1Click(Sender: TObject);
    procedure actInserirExecute(Sender: TObject);
    procedure actSalvarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  telaCadCep: TtelaCadCep;

implementation

uses uDados;

{$R *.dfm}

procedure TtelaCadCep.SpeedButton1Click(Sender: TObject);
var
p : Integer;
i : Int64;
n : integer;
begin

edtCep.Text := telaDados.BuscarPorCep(edtCep.Text).cep;


{
  i:=60000000;
  while i<63999999 do begin
       ACBrCEP1.BuscarPorCEP(IntToStr(i));
       if ACBrCEP1.BuscarPorCEP(IntToStr(i)) = 0 then begin 

        i:= i+1;
      ACBrCEP1.TimeOut := ACBrCEP1.TimeOut +2;


       end else begin
       for n := 0 to ACBrCEP1.Enderecos.Count -1 do
       begin

        telaDados.tblCep.Insert;
        telaDados.tblCepCEP.AsString        := UpperCase(ACBrCEP1.Enderecos[n].CEP);
        telaDados.tblCepENDERECO.AsString   := UpperCase(ACBrCEP1.Enderecos[n].Logradouro);
        telaDados.tblCepCOMPLEMENTO.AsString:= UpperCase(ACBrCEP1.Enderecos[n].Complemento);
        telaDados.tblCepCIDADE_END.AsString := UpperCase(ACBrCEP1.Enderecos[n].Municipio);
        telaDados.tblCepUF_END.AsString     := UpperCase(ACBrCEP1.Enderecos[n].UF);
        telaDados.tblCepBAIRRO_END.AsString := UpperCase(ACBrCEP1.Enderecos[n].Bairro);
    telaDados.tblCep.Post;
    i:=i+1;
    end;
  end;
end; }
end;


procedure TtelaCadCep.actInserirExecute(Sender: TObject);
begin
edtCep.Enabled := true;
cbCidade.Enabled := true;
cbBairro.Enabled := true;
edtEnd.Enabled := true;
edtCompl.Enabled := true;
cbUf.Enabled := true;
btnSalvar.Enabled := true;
btnNovo.Enabled := false;

edtCep.SetFocus;



{telaDados.tbl.Insert;}
end;

procedure TtelaCadCep.actSalvarExecute(Sender: TObject);
begin
edtCep.Enabled := false;
cbCidade.Enabled := false;
cbBairro.Enabled := false;
edtEnd.Enabled := false;
edtCompl.Enabled := false;
cbUf.Enabled := false;
btnSalvar.Enabled := false;
btnNovo.Enabled := true;


{telaDados.tblCep.Post;}
end;

procedure TtelaCadCep.FormCreate(Sender: TObject);
begin{
with telaDados.tblEstados do
    begin 
      First;
      while not Eof do
        begin 
          cbUf.Items.Add(telaDados.tblEstados.FieldByName('UF').AsString); 
          Next; 
        end;
    end;

    telaDados.qryEstados.Close;
    telaDados.qryEstados.SQL.Clear;
    telaDados.qryEstados.SQL.Add('Select * from ESTADOS where UF = ');
    telaDados.qryEstados.SQL.Add(cbUf.Text);
    telaDados.qryEstados.Open;

    telaDados.tblCidades.Close;
    telaDados.qryCidades.SQL.Clear;
    telaDados.qryCidades.SQL.Add('Select * from CIDADES where ID_ESTADO =');
    telaDados.qryCidades.SQL.Add(telaDados.qryEstados.FieldByName('ID').Value);
    telaDados.qryCidades.Open; 
with telaDados.qryCidades do
    begin 
      First;
      while not Eof do
        begin
          cbCidade.Items.Add(telaDados.qryCidades.FieldByName('CIDADE').AsString);
          Next;
        end;
    end;
with telaDados.tblBairros do
    begin 
      First;
      while not Eof do
        begin
          cbBairro.Items.Add(telaDados.tblBairros.FieldByName('BAIRROS').AsString);
          Next;
        end;
    end;}
end;

end.
