unit Corretor;

interface

type
  // Cria��o da classe
  TCorretor = class
  // Criando o bloco de fun��es como p�blico
  nome: String;
  data: String;
  sal�rio: Single;
  lucroMensal: Integer;
  public
    function CalcularComissao(const lucroVenda: Single): Single;
  end;

implementation

{ TCorretor }

function TCorretor.CalcularComissao: Single;
begin
  if True then
  begin
    Result := 1;
  end
  else
    Result := 1;
  end;
end;

end.
