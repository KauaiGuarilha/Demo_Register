unit UConsultaCidade;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UCidade, UDataMod, UCadastroCidade;

type
  TfrmConsultaCidade = class(TForm)
    Label1: TLabel;
    edtConsulta: TEdit;
    btnBuscar: TButton;
    DBGridCidade: TDBGrid;
    btnIncluir: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnVoltar: TButton;
    btnRefresh: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    umCidade : Cidade;
    umDataMod : TDataMod;
    umfrmCadastroCidade : TfrmCadastroCidade;
    procedure mostrarFormularioCadastro();
  public
    { Public declarations }
    procedure conhecaObjeto(pCidade: Cidade; pDataMod : TDataMod);
  end;

var
  frmConsultaCidade: TfrmConsultaCidade;

implementation

{$R *.dfm}

{ TfrmConsultaCidade }

procedure TfrmConsultaCidade.btnBuscarClick(Sender: TObject);
begin
    if (self.edtConsulta.Text) = '' then
       begin
         Application.MessageBox('Informe um Valor a Ser Pesquisado!', 'Atenção' , MB_OK+MB_ICONWARNING);
         self.edtConsulta.SetFocus;
         Abort;
       end
    else begin

        umDataMod.DSetCidade.SelectSQL.Text := 'SELECT * FROM CIDADE WHERE CIDADE LIKE ' + QuotedStr('%'+self.edtConsulta.Text+'%');

    end;
      umDataMod.DSetCidade.Open;
end;

procedure TfrmConsultaCidade.btnEditarClick(Sender: TObject);
begin
    self.mostrarFormularioCadastro;
end;

procedure TfrmConsultaCidade.btnExcluirClick(Sender: TObject);
begin
     umDataMod.DSetCidade.Delete;
end;

procedure TfrmConsultaCidade.btnIncluirClick(Sender: TObject);
begin
    self.mostrarFormularioCadastro;
end;

procedure TfrmConsultaCidade.btnRefreshClick(Sender: TObject);
begin
     umDataMod.DSetCidade.Close;
     umDataMod.DSetCidade.selectsql.Text := 'SELECT * FROM CIDADE';
     umDataMod.DSetCidade.Open;
     self.DBGridCidade.DataSource := umDataMod.DSCidade;
     self.edtConsulta.Text := '';
end;

procedure TfrmConsultaCidade.btnVoltarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmConsultaCidade.conhecaObjeto(pCidade: Cidade; pDataMod: TDataMod);
begin
    umCidade := pCidade;
    umDataMod := pDataMod;
end;

procedure TfrmConsultaCidade.FormShow(Sender: TObject);
begin
      umDataMod.DSetCidade.Close;
      umDataMod.DSetCidade.SelectSQL.Text := 'SELECT * FROM CIDADE';
      umDataMod.DSetCidade.Open;
      self.DBGridCidade.DataSource := umDataMod.DSCidade;
end;

procedure TfrmConsultaCidade.mostrarFormularioCadastro;
begin
     umfrmCadastroCidade := TfrmCadastroCidade.Create(nil);
     try
       umfrmCadastroCidade.conhecaObjeto(umCidade, umDataMod);
       umfrmCadastroCidade.ShowModal;
     finally
       FreeAndNil(umfrmCadastroCidade);
     end;
end;

end.
