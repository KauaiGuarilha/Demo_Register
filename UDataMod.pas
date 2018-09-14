unit UDataMod;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBCustomDataSet, IBX.IBDatabase;

type
  TDataMod = class(TDataModule)
    Trans: TIBTransaction;
    Banco: TIBDatabase;
    DSetPais: TIBDataSet;
    DSPais: TDataSource;
    DSetPaisIDPAIS: TIntegerField;
    DSetPaisPAIS: TIBStringField;
    DSetEstado: TIBDataSet;
    DSEstado: TDataSource;
    DSetEstadoIDESTADO: TIntegerField;
    DSetEstadoESTADO: TIBStringField;
    DSetEstadoUF: TIBStringField;
    DSetCidade: TIBDataSet;
    DSCidade: TDataSource;
    DSetCidadeIDCIDADE: TIntegerField;
    DSetCidadeCIDADE: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataMod: TDataMod;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
