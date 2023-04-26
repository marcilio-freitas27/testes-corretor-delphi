unit Corretor2;

interface

uses
  System.SysUtils;

type
  // Criacaoo da classe
  TCorretor = class
  // Criando o bloco de funcoes como publico
  private
  //teste para o nome da pessoas
    FNome: string;
    FDataContratacao: TDateTime;
    FValorVendido: Integer;
    procedure SetNome(const Value: string);
    procedure SetData(const Value: TDateTime);
    procedure SetVendido(const Value: Integer);
  public
    property nome: string read Fnome write SetNome;
    property data: TDateTime read FDataContratacao write SetData;
    property vendido: Integer read FValorVendido write SetVendido;
    function calcularComissao(lucroVenda: Integer): Integer;
    function verificarNome(lucroVenda: Single): Single;
    function verificarData(lucroVenda: Single): Single;
    function verificarSalario(lucroVenda: Single): Single;
  end;

  ENomeInvalido = class(Exception)

  end;

  EDataInvalida = class(Exception)

  end;

  EValorVendidoInvalido = class(Exception)

  end;

implementation

{ TCorretor }

function TCorretor.calcularComissao(lucroVenda: Integer): Integer;
begin
  if lucroVenda > (lucroVenda) div 12 then
  begin
    Result := lucroVenda;
  end
  else
  begin
    Result := lucroVenda;
  end;
end;

procedure TCorretor.SetData(const Value: TDateTime);
begin
  if Value <= Now then
  begin
    FDataContratacao := Value;
  end
  else
  begin
       raise EDataInvalida.Create('A data de contratação não pode ser maior que a atual');
  end;
end;

procedure TCorretor.SetNome(const Value: string);
begin
  if Value.Length >= 3 then
  begin
    FNome := Value;
  end
  else
  begin
    raise ENomeInvalido.Create('Nome não pode ser maior que 3 cacacteres.');
  end;
end;

procedure TCorretor.SetVendido(const Value: Integer);
begin
  if Value >= 0 then
  begin
    FValorVendido := Value;
  end
  else
  begin
    raise EValorVendidoInvalido.Create('Valor inválido');
  end;
end;

function TCorretor.verificarData(lucroVenda: Single): Single;
begin

end;

function TCorretor.verificarNome(lucroVenda: Single): Single;
begin

end;

function TCorretor.verificarSalario(lucroVenda: Single): Single;
begin

end;

end.

