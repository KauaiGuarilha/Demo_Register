program Gerente;

uses
  Vcl.Forms,
  Ugerente in 'Ugerente.pas' {frmGerente},
  UPais in 'Class\UPais.pas',
  UEstado in 'Class\UEstado.pas',
  UCidade in 'Class\UCidade.pas',
  Vcl.Themes,
  Vcl.Styles,
  UCadastroCidade in 'Views\UCadastroCidade.pas' {frmCadastroCidade},
  UCadastroEstado in 'Views\UCadastroEstado.pas' {frmCadastroEstado},
  UCadastroPais in 'Views\UCadastroPais.pas' {frmCadastroPais},
  UConsultaPais in 'Views\UConsultaPais.pas' {frmConsultaPais},
  UDataMod in 'UDataMod.pas' {DataMod: TDataModule},
  UConsultaEstado in 'Views\UConsultaEstado.pas' {frmConsultaEstado},
  UConsultaCidade in 'Views\UConsultaCidade.pas' {frmConsultaCidade};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Charcoal Dark Slate');
  Application.CreateForm(TfrmGerente, frmGerente);
  Application.CreateForm(TfrmCadastroCidade, frmCadastroCidade);
  Application.CreateForm(TfrmCadastroEstado, frmCadastroEstado);
  Application.CreateForm(TfrmCadastroPais, frmCadastroPais);
  Application.CreateForm(TfrmConsultaPais, frmConsultaPais);
  Application.CreateForm(TDataMod, DataMod);
  Application.CreateForm(TfrmConsultaEstado, frmConsultaEstado);
  Application.CreateForm(TfrmConsultaCidade, frmConsultaCidade);
  Application.Run;
end.
