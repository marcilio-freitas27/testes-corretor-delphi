﻿unit Corretor2;

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
    procedure SetNome(const Value: string);
    procedure SetData(const Value: TDateTime);
  public
    property nome: string read Fnome write SetNome;
    property data: TDateTime read FDataContratacao write SetData;
    function calcularComissao(lucroVenda: Single): Single;
    function verificarNome(lucroVenda: Single): Single;
    function verificarData(lucroVenda: Single): Single;
    function verificarSalario(lucroVenda: Single): Single;
  end;

  ENomeInvalido = class(Exception)

  end;

  EDataInvalida = class(Exception)

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

