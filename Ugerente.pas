unit Ugerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Ucidade, Vcl.Menus, UCadastroCidade, UCadastroEstado, uConsultaPais,
  Vcl.ExtCtrls, Vcl.ComCtrls, UEstado, UPais, UDataMod, UConsultaEstado, UConsultaCidade;

type
  TfrmGerente = class(TForm)
    Panel1: TPanel;
    btnEstado: TButton;
    btnPais: TButton;
    btnCidade: TButton;
    Label1: TLabel;
    procedure btnCidadeClick(Sender: TObject);
    procedure btnEstadoClick(Sender: TObject);
    procedure btnPaisClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

    umCidade : Cidade;
    umEstado : Estado;
    umPais : Pais;
    umfrmCadastroCidade : TfrmCadastroCidade;
    umfrmCadastroEstado : TfrmCadastroEstado;
    umfrmConsultaPais : TfrmConsultaPais;
    umfrmConsultaEstado : TfrmConsultaEstado;
    umfrmConsultaCidade : TfrmConsultaCidade;
    umDataMod : TDataMod; // Propriedade do banco de dados
  public
    { Public declarations }
  end;

var
  frmGerente: TfrmGerente;

implementation

{$R *.dfm}

procedure TfrmGerente.btnCidadeClick(Sender: TObject);
begin
     umfrmConsultaCidade := TfrmConsultaCidade.Create(nil);
     try
       umfrmConsultaCidade.conhecaObjeto(umCidade, umDataMod);
       umfrmConsultaCidade.ShowModal;
     finally
      FreeAndNil(umFrmConsultaCidade);
     end;
end;

procedure TfrmGerente.btnEstadoClick(Sender: TObject);
begin
     umfrmConsultaEstado := TfrmConsultaEstado.Create(nil);
      try
        umfrmConsultaEstado.conhecaObjeto(umEstado, umDataMod);
        umfrmConsultaEstado.ShowModal;
      finally
        FreeAndNil(umfrmConsultaEstado);
      end;
end;

procedure TfrmGerente.btnPaisClick(Sender: TObject);
begin
     umfrmConsultaPais := TfrmConsultaPais.Create(nil);
     try                              //////// Só entra a variável e não o tipo
       umfrmConsultaPais.conhecaObjeto(umPais, umDataMod);  // Propriedade do banco de dados
       umfrmConsultaPais.ShowModal;
     finally
       FreeAndNil(umfrmConsultaPais);
     end;
end;

procedure TfrmGerente.FormClose(Sender: TObject; var Action: TCloseAction);
begin  // Destruir os objetos na finalização do Form
    umCidade.DestruirCidade;
    umEstado.DestruirEstado;
    umPais.DestruirPais;
    umDataMod.Destroy;  // Propriedade do banco de dados
end;

procedure TfrmGerente.FormCreate(Sender: TObject);
begin  // Criar os objetos na inicialização do Form
     umPais := Pais.CrieObjetos;
     umEstado := Estado.CriarObjeto;
     umCidade := Cidade.CriarObjeto;
     umDataMod :=  TDataMod.Create(nil);   // Propriedade do banco de dados
end;

end.
