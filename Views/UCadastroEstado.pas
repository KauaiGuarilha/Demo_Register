unit UCadastroEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, UCidade, Vcl.StdCtrls, UEstado, UDataMod,UPais;

type
  TfrmCadastroEstado = class(TForm)
    Panel1: TPanel;
    Label9: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    edtEstado: TEdit;
    edtNumEst: TEdit;
    edtUf: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    umCidade : Cidade;
    umEstado : Estado;
    umPais : Pais;
    umDataMod : TDataMod;
  public
    { Public declarations }
    procedure conhecaObjeto(pEstado : Estado; pDataMod : TDataMod);
  end;

var
  frmCadastroEstado: TfrmCadastroEstado;

implementation

{$R *.dfm}

procedure TfrmCadastroEstado.Button1Click(Sender: TObject);
begin

     if (Self.edtNumEst.Text) = '' then
      ShowMessage('Informe o Número do Estado!')

     else if (self.edtEstado.Text) = '' then
       ShowMessage('Informe o Nome do Estado!')

     else if (self.edtUf.Text) = '' then
       ShowMessage('Informe a UF!');

     umEstado.setCodigo(StrToInt(self.edtNumEst.Text));
     umEstado.setDescricao(self.edtEstado.Text);
     umEstado.setUf(self.edtUf.Text);

     umDataMod.DSetEstado.Close;
     umDataMod.DSetEstado.Open;

     if not umDataMod.Trans.Active then
        umDataMod.Trans.StartTransaction;

     if umEstado.getCodigo >= 0 then
        umDataMod.DSetEstado.Insert

     else
        umDataMod.DSetEstado.Edit;
        umDataMod.DSetEstadoIDESTADO.Value := umEstado.getCodigo;
        umDataMod.DSetEstadoESTADO.Value := umEstado.getDescricao;
        umDataMod.DSetEstadoUF.Value := umEstado.getUf;

        umDataMod.DSetEstado.Post;
        umDataMod.Trans.Commit;


        umDataMod.DSetEstado.Open;
end;

procedure TfrmCadastroEstado.conhecaObjeto(pEstado: Estado; pDataMod: TDataMod);
begin
     umEstado := pEstado;
     umDataMod := pDataMod;
end;

end.
