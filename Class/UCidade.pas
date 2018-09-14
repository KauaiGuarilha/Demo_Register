unit UCidade;

interface

uses UEstado;

type Cidade = class

 private codigo : Integer;
 private descricao : String;
 private umEstado : Estado;

 public constructor CriarObjeto;

 function getCodigo : Integer;
 procedure setCodigo(pCodigo : Integer);

 function getEstado : Estado;
 procedure setEstado(pEstado : Estado);

 function getDescricao : String;
 procedure setDescricao(pDescricao : String);

 public destructor DestruirCidade;

end;

implementation

constructor Cidade.CriarObjeto;
begin
      codigo:=0;
      descricao := '';
      umEstado :=  Estado.CriarObjeto;
end;

destructor Cidade.DestruirCidade;
begin
     umEstado.DestruirEstado;
end;

function Cidade.getCodigo: Integer;
begin
    result := codigo;
end;

function Cidade.getDescricao: String;
begin
     result := descricao;
end;

function Cidade.getEstado: Estado;
begin
    result := umEstado;
end;

procedure Cidade.setCodigo(pCodigo: Integer);
begin
    codigo := pCodigo;
end;

procedure Cidade.setDescricao(pDescricao: String);
begin
    descricao := pDescricao;
end;

procedure Cidade.setEstado(pEstado: Estado);
begin
     umEstado := pEstado;
end;

end.
