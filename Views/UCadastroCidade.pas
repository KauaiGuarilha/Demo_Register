unit UCadastroCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UCidade, Vcl.StdCtrls, UDataMod;

type
  TfrmCadastroCidade = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    edtNCidade: TEdit;
    edtCidade: TEdit;
    btnGravar: TButton;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    umCidade : Cidade;
    umDataMod : TDataMod;
  public
    { Public declarations }
    procedure conhecaObjeto(pCidade : Cidade; pDataMod : TDataMod);
  end;

var
  frmCadastroCidade: TfrmCadastroCidade;

implementation

{$R *.dfm}

procedure TfrmCadastroCidade.btnGravarClick(Sender: TObject);
begin

      if (self.edtNCidade.Text) = '' then
       ShowMessage('Informe o Número da Cidade!')

       else if (self.edtCidade.Text) = '' then
       ShowMessage('Informe o Nome da Cidade!');


      umCidade.setCodigo(StrToInt(self.edtNCidade.Text));
      umCidade.setDescricao(self.edtCidade.Text);

      umDataMod.DSetCidade.Close;
      umDataMod.DSetCidade.Open;

      if not umDataMod.Trans.Active then
         umDataMod.Trans.AutoStartTransaction;

      if umCidade.getCodigo >= 0 then
         umDataMod.DSetCidade.Insert

      else

        umDataMod.DSetCidade.Edit;
        umDataMod.DSetCidadeIDCIDADE.Value := umCidade.getCodigo;
        umDataMod.DSetCidadeCIDADE.Value := umCidade.getDescricao;

        umDataMod.DSetCidade.Post;
        umDataMod.Trans.Commit;

        umDataMod.DSetCidade.Open;

end;

procedure TfrmCadastroCidade.conhecaObjeto(pCidade: Cidade; pDataMod: TDataMod);
begin
     umCidade := pCidade;
     umDataMod := pDataMod;
end;

end.
