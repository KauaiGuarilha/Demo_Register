unit UEstado;

interface

uses UPais;

type Estado = class

  private codigo : Integer;
  private descricao : String;
  private uf : String;
  private umPais : Pais;

  public constructor CriarObjeto;

  function getCodigo : Integer;
  procedure setCodigo(pCodigo : Integer);

  function getDescricao : String;
  procedure setDescricao(pDescricao : String);

  function getUf : String;
  procedure setUf(pUf : String);

  function getPais : Pais;
  procedure setPais(pPais : Pais);

  public destructor DestruirEstado;
end;

implementation

constructor Estado.CriarObjeto;
begin
    codigo := 0;
    descricao := '';
    uf := '';
    umPais := Pais.CrieObjetos;
end;

destructor Estado.DestruirEstado;
begin
     umPais.DestruirPais;
end;

function Estado.getCodigo: Integer;
begin
    result := codigo;
end;

function Estado.getDescricao: String;
begin
      result := descricao;
end;

function Estado.getPais: Pais;
begin
     result := umPais;
end;

function Estado.getUf: String;
begin
     result := uf;
end;

procedure Estado.setCodigo(pCodigo: Integer);
begin
     codigo := pCodigo;
end;

procedure Estado.setDescricao(pDescricao: String);
begin
    descricao := pDescricao;
end;

procedure Estado.setPais(pPais: Pais);
begin
    umPais := pPais;
end;

procedure Estado.setUf(pUf: String);
begin
    uf := pUf;
end;

end.
