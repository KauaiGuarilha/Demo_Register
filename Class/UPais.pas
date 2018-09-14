unit UPais;

interface

type Pais = class

     private codigo: integer;
     private descricao: String;

     public constructor CrieObjetos();

      function getCodigo : Integer;
      procedure setCodigo(pCodigo: integer);

      function getDescricao : String;
      procedure setDescricao(pDescricao : String);

     public destructor DestruirPais;
end;

implementation

constructor Pais.CrieObjetos;
begin
    codigo := 0;
    descricao := '';
end;

destructor Pais.DestruirPais;
begin

end;

function Pais.getCodigo: Integer;
begin
   result := codigo;
end;

function Pais.getDescricao: String;
begin
    result := descricao;
end;

procedure Pais.setCodigo(pCodigo: integer);
begin
    codigo := pCodigo;
end;

procedure Pais.setDescricao(pDescricao: String);
begin
    descricao := pDescricao;
end;

end.
