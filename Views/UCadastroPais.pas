unit UCadastroPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, UCidade, UPais, UDataMod;

type
  TfrmCadastroPais = class(TForm)
    Panel1: TPanel;
    edtNumero: TEdit;
    edtNmPais: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btnGravar: TButton;
    procedure btnGravarClick(Sender: TObject);
  private
    { Private declarations }
    umCidade : Cidade;
    umPais : Pais;
    umDataMod : TDataMod;
  public
    { Public declarations }
    procedure conhecaObjeto(pPais : Pais; pDataMod : TDataMod);
  end;

var
  frmCadastroPais: TfrmCadastroPais;

implementation

{$R *.dfm}

uses Ugerente;

procedure TfrmCadastroPais.btnGravarClick(Sender: TObject);
begin
     if (self.edtNumero.Text) = '' then
     ShowMessage('Favor informar o n�mero do Pa�s')

     else if (self.edtNmPais.Text) = '' then
     ShowMessage('Favor informar o nome do Pa�s');


     umPais.setCodigo(StrToInt(self.edtNumero.Text));
     umPais.setDescricao(self.edtNmPais.Text);

     umDataMod.DSetPais.Close;  // Fecha o dataset
     umDataMod.DSetPais.Open;   // Abra o DataSet

     if not umDataMod.Trans.Active then   // Se o banco n�o estivar ativo, fa�a a ativa��o
         umDataMod.Trans.StartTransaction; // Se n�o tiver ativo, starta

     if umPais.getCodigo >= 0 then    // Se o c�digo for igual a zero, adiciona
        umDataMod.DSetPais.Insert   // Inserir o cadastro

     else
         umDataMod.DSetPais.Edit;    //  Edi��o do cadastro
         umDataMod.DSetPaisIDPAIS.Value := umPais.getCodigo();
         umDataMod.DSetPaisPAIS.Value := umPais.getDescricao();

         umDataMod.DsetPais.Post; // postar a informa��es na tabela
         umDataMod.Trans.Commit;


         umDataMod.DSetPais.Close;
         umDataMod.DSetPais.Open;

// Descri��o do procedimento
// 1� fa�o a inser��o das informa��es do Campo TEdit
// 2� fecho o DataSet e abro novamente
// 3� Verifico se a transfer�ncia do dataModule est� ativo, se n�o ativa.
// 4� verifico se o indice � igual a 0, se for INSERE A INFORMA��O
// 5� Se n�o, fa�a a edi��o
// 6� Insere as informa��es do Get da Classe no DATASET RESPECTIVO
// 7� Fazer o POST no banco e COMITAR

end ;

procedure TfrmCadastroPais.conhecaObjeto(pPais: Pais; pDataMod: TDataMod);
begin
     umPais := pPais;
     umDataMod := pDataMod;
end;

end.
