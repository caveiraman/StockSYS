unit uConfigEmit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, uDados;

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
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  telaConfigEmit: TtelaConfigEmit;

implementation

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
end;

end.