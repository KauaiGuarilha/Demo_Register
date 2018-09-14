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
     ShowMessage('Favor informar o número do País')

     else if (self.edtNmPais.Text) = '' then
     ShowMessage('Favor informar o nome do País');


     umPais.setCodigo(StrToInt(self.edtNumero.Text));
     umPais.setDescricao(self.edtNmPais.Text);

     umDataMod.DSetPais.Close;  // Fecha o dataset
     umDataMod.DSetPais.Open;   // Abra o DataSet

     if not umDataMod.Trans.Active then   // Se o banco não estivar ativo, faça a ativação
         umDataMod.Trans.StartTransaction; // Se não tiver ativo, starta

     if umPais.getCodigo >= 0 then    // Se o código for igual a zero, adiciona
        umDataMod.DSetPais.Insert   // Inserir o cadastro

     else
         umDataMod.DSetPais.Edit;    //  Edição do cadastro
         umDataMod.DSetPaisIDPAIS.Value := umPais.getCodigo();
         umDataMod.DSetPaisPAIS.Value := umPais.getDescricao();

         umDataMod.DsetPais.Post; // postar a informações na tabela
         umDataMod.Trans.Commit;


         umDataMod.DSetPais.Close;
         umDataMod.DSetPais.Open;

// Descrição do procedimento
// 1º faço a inserção das informações do Campo TEdit
// 2º fecho o DataSet e abro novamente
// 3º Verifico se a transferência do dataModule está ativo, se não ativa.
// 4º verifico se o indice é igual a 0, se for INSERE A INFORMAÇÃO
// 5º Se não, faça a edição
// 6º Insere as informações do Get da Classe no DATASET RESPECTIVO
// 7º Fazer o POST no banco e COMITAR

end ;

procedure TfrmCadastroPais.conhecaObjeto(pPais: Pais; pDataMod: TDataMod);
begin
     umPais := pPais;
     umDataMod := pDataMod;
end;

end.
