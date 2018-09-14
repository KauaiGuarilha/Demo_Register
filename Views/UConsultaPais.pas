unit UConsultaPais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, uCadastroPais, UPais, UDataMod;

type
  TfrmConsultaPais = class(TForm)
    Consulta: TLabel;
    edtConsulta: TEdit;
    btnBuscar: TButton;
    DBGridPais: TDBGrid;
    btnIncluir: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnVoltar: TButton;
    btnRefresh: TButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
  private
    { Private declarations }
    umDataMod : TDataMod;  // Propriedade do banco de dados
    umPais : Pais;
    umfrmCadastroPais : TfrmCadastroPais;
    procedure mostrarFormularioDeCadastro();
  public
    { Public declarations }
    // Criação da visualização entre form/Classes se possível.
    procedure conhecaObjeto(pPais : Pais; pDataMod : TDataMod); // Propriedade do banco de dados
  end;

var
  frmConsultaPais: TfrmConsultaPais;

implementation

{$R *.dfm}

procedure TfrmConsultaPais.btnBuscarClick(Sender: TObject);
begin
     if (self.edtConsulta.Text) = '' then
      begin
        Application.MessageBox('Informe um Valor a ser Pesquisado!', 'Atenção!', MB_OK+MB_ICONWARNING);
        edtConsulta.SetFocus;
        Abort;
      end
     else begin

        umDataMod.DSetPais.SelectSQL.Text := 'SELECT * FROM PAIS WHERE PAIS LIKE ' + QuotedStr('%'+self.edtConsulta.Text+'%');

     end;
     umDataMod.DSetPais.Open;
end;

procedure TfrmConsultaPais.btnEditarClick(Sender: TObject);
begin
    self.mostrarFormularioDeCadastro;
end;

procedure TfrmConsultaPais.btnExcluirClick(Sender: TObject);
begin
    umDataMod.DSetPais.Delete;

end;

procedure TfrmConsultaPais.btnIncluirClick(Sender: TObject);
begin
    self.mostrarFormularioDeCadastro;
end;

procedure TfrmConsultaPais.btnRefreshClick(Sender: TObject);
begin
     umDataMod.DSetPais.Close;
     umDataMod.DSetPais.SelectSQL.Text := 'SELECT * FROM PAIS';
     umDataMod.DSetPais.Open;
     self.DBGridPais.DataSource := umDataMod.DSPais;
     self.edtConsulta.Text := '';

end;

procedure TfrmConsultaPais.btnVoltarClick(Sender: TObject);
begin
   close;
end;

procedure TfrmConsultaPais.conhecaObjeto(pPais: Pais; pDataMod : TDataMod);
begin  ///////////
    umPais := pPais;
    umDataMod := pDataMod; // Propriedade do banco de dados
end;

procedure TfrmConsultaPais.FormShow(Sender: TObject);
begin
    umDataMod.DSetPais.Close;
    umDataMod.DSetPais.SelectSQL.Text := 'select * from pais';
    umDataMod.DSetPais.Open;
    self.DBGridPais.DataSource := umDataMod.DSPais;
end;

procedure TfrmConsultaPais.mostrarFormularioDeCadastro;
begin
     umfrmCadastroPais := TfrmCadastroPais.Create(nil);
     try
       umfrmCadastroPais.conhecaObjeto(umPais, umDataMod);
       umfrmCadastroPais.ShowModal;
     finally
       FreeAndNil(umfrmCadastroPais);
     end;
end;

end.
