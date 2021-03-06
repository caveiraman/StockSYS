unit uConfigEmit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, uDados, Buttons;

type
  TtelaConfigEmit = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtRazSoc: TDBEdit;
    edtNomeFan: TDBEdit;
    Label3: TLabel;
    edtInscEst: TDBEdit;
    edtCnpj: TDBEdit;
    Label4: TLabel;
    edtEndereco: TDBEdit;
    Label5: TLabel;
    edtNum: TDBEdit;
    Label6: TLabel;
    edtBairro: TDBEdit;
    Label7: TLabel;
    edtCep: TDBEdit;
    Label8: TLabel;
    edtCidade: TDBEdit;
    Label9: TLabel;
    edtUf: TDBEdit;
    edtTelefone: TDBEdit;
    Label10: TLabel;
    Label16: TLabel;
    edtCodMun: TDBEdit;
    edtEmailEmitente: TDBEdit;
    Label21: TLabel;
    btnSalvar: TSpeedButton;
    btnEditar: TSpeedButton;
    btnCadastrar: TSpeedButton;
    Label11: TLabel;
    radReg: TRadioGroup;
    cbEmpresa: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCadastrarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaConfigEmit: TtelaConfigEmit;

implementation

uses uCadEmit, DB;

{$R *.dfm}

procedure TtelaConfigEmit.FormShow(Sender: TObject);
begin
  //EMITENTE
  edtRazSoc.Text          := telaDados.tblEmitenteRAZ_SOC.AsString;
  edtNomeFan.Text         := telaDados.tblEmitenteFANTASIA.AsString;
  edtCnpj.Text            := telaDados.tblEmitenteCNPJ.AsString;
  edtInscEst.Text         := telaDados.tblEmitenteINSCEST.AsString;
  edtEndereco.Text        := telaDados.tblEmitenteENDERECO.AsString;
  edtNum.Text             := telaDados.tblEmitenteNUMERO.AsString;
  edtBairro.Text          := telaDados.tblEmitenteBAIRRO.AsString;
  edtCidade.Text          := telaDados.tblEmitenteCIDADE.AsString;
  edtCep.Text             := telaDados.tblEmitenteCEP.AsString;
  edtUf.Text              := telaDados.tblEmitenteUF.AsString;
  edtTelefone.Text        := telaDados.tblEmitenteTELEFONE.AsString;
  edtCodMun.Text          := telaDados.tblEmitenteCODMUN.AsString;
  cbEmpresa.ItemIndex     := telaDados.tblEmitenteTIPOEMP.AsInteger;
  radReg.ItemIndex        := telaDados.tblEmitenteREGIME.Value;
end;

procedure TtelaConfigEmit.FormCreate(Sender: TObject);
begin
  telaDados.qryEmitente.Close;
  telaDados.qryEmitente.SQL.Clear;
  telaDados.qryEmitente.SQL.Add('Select * from Emitente where id_login = ');
  telaDados.qryEmitente.SQL.Add(telaDados.tblLogin.FieldByName('ID').AsString);
  if telaDados.tblLogin.FieldByName('ADM').AsInteger = 1 then begin
    btnCadastrar.Visible := true;
  end;

  if telaDados.qryEmitente.RecordCount > 0 then begin
    telaDados.qryEmitente.Open;
    radReg.ItemIndex := telaDados.qryEmitente.FieldByName('REGIME').Value;
    cbEmpresa.ItemIndex := telaDados.qryEmitente.FieldByName('TIPOEMP').Value;
  end else begin
    telaDados.qryEmitente.Close;
  end;
end;

procedure TtelaConfigEmit.btnCadastrarClick(Sender: TObject);
begin
  Application.CreateForm(TtelaCadEmit, telaCadEmit);
  telaCadEmit.Show;
  telaConfigEmit.Hide;
  //telaDados.tblLogin.Insert;
  //telaDados.tblEmitente.Insert;
end;

procedure TtelaConfigEmit.btnEditarClick(Sender: TObject);
begin
  telaDados.tblEmitente.Edit;
end;

procedure TtelaConfigEmit.btnSalvarClick(Sender: TObject);
begin
  telaDados.tblEmitenteTIPOEMP.Value := cbEmpresa.ItemIndex;
  telaDados.tblEmitenteREGIME.Value := radReg.ItemIndex;
  telaDados.tblEmitente.Post;
end;

end.
