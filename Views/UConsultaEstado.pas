unit UConsultaEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, UEstado, UDataMod, UCadastroEstado;

type
  TfrmConsultaEstado = class(TForm)
    Label1: TLabel;
    edtConsulta: TEdit;
    btnBuscar: TButton;
    DBGridEstado: TDBGrid;
    btnIncluir: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnVoltar: TButton;
    btnRefresh: TButton;
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    umEstado : Estado;
    umDataMod : TDataMod;
    umfrmCadastroEstado : TfrmCadastroEstado;
    procedure mostrarFormularioCadastro();
  public
    { Public declarations }
    procedure conhecaObjeto(pEstado : Estado; pDataMod : TDataMod);
  end;

var
  frmConsultaEstado: TfrmConsultaEstado;

implementation

{$R *.dfm}

{ TForm2 }

procedure TfrmConsultaEstado.btnBuscarClick(Sender: TObject);
begin
     if (self.edtConsulta.Text) = '' then
       begin
          Application.MessageBox('Informe um valor a ser Pesquisado!', 'Atenção!', MB_OK+MB_ICONWARNING);
          self.edtConsulta.SetFocus;
          Abort;
       end
     else begin

         umDataMod.DSetEstado.SelectSQL.Text := 'SELECT * FROM ESTADO WHERE ESTADO LIKE' + QuotedStr('%'+self.edtConsulta.Text+'%');

     end;
         umDataMod.DSetEstado.Open;
end;

procedure TfrmConsultaEstado.btnEditarClick(Sender: TObject);
begin
    self.mostrarFormularioCadastro;
end;

procedure TfrmConsultaEstado.btnExcluirClick(Sender: TObject);
begin
     umDataMod.DSetEstado.Delete;
end;

procedure TfrmConsultaEstado.btnIncluirClick(Sender: TObject);
begin
    self.mostrarFormularioCadastro;
end;

procedure TfrmConsultaEstado.btnRefreshClick(Sender: TObject);
begin
    umDataMod.DSetEstado.Close;
    umDataMod.DSetEstado.SelectSQL.Text := 'SELECT * FROM ESTADO';
    umDataMod.DSetEstado.Open;
    self.DBGridEstado.DataSource := umDataMod.DSEstado;
    self.edtConsulta.Text := '';
end;

procedure TfrmConsultaEstado.btnVoltarClick(Sender: TObject);
begin
    Close;
end;

procedure TfrmConsultaEstado.conhecaObjeto(pEstado: Estado; pDataMod: TDataMod);
begin
    umEstado := pEstado;
    umDataMod := pDataMod;
end;

procedure TfrmConsultaEstado.FormShow(Sender: TObject);
begin
     umDataMod.DSetEstado.Close;
     umDataMod.DSetEstado.SelectSQL.Text := 'select * from estado';
     umDataMod.DSetEstado.Open;
     self.DBGridEstado.DataSource := umDataMod.DSEstado;
end;

procedure TfrmConsultaEstado.mostrarFormularioCadastro;
begin
    frmCadastroEstado := TfrmCadastroEstado.Create(nil);
     try
       frmCadastroEstado.conhecaObjeto(umEstado, umDataMod);
       frmCadastroEstado.ShowModal;
     finally
       FreeAndNil(frmCadastroEstado);
     end;
end;

end.
