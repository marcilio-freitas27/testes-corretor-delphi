unit Corretor2;

interface

type
  // Criacaoo da classe
  TCorretor = class
  // Criando o bloco de funcoes como publico
  nome: String;
  data: String;
  salario: Single;
  lucroMensal: Integer;
  public
    function calcularComissao(lucroVenda: Single): Single;
  end;

implementation

{ TCorretor }

function TCorretor.calcularComissao(lucroVenda: Single): Single;
begin
  if True then
  begin
    Result := 1;
  end
  else
  begin
    Result := 1;
  end;
end;

end.

