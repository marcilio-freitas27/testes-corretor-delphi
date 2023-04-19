﻿unit Corretor2;

interface

uses
  System.SysUtils;

type
  // Criacaoo da classe
  TCorretor = class
  // Criando o bloco de funcoes como publico
  private
    FNome: string;
    procedure SetNome(const Value: string);
  public
    property nome: string read Fnome write SetNome;
    function calcularComissao(lucroVenda: Single): Single;
    function verificarNome(lucroVenda: Single): Single;
    function verificarData(lucroVenda: Single): Single;
    function verificarSalario(lucroVenda: Single): Single;
  end;

  ENomeInvalido = class(Exception)

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

procedure TCorretor.SetNome(const Value: string);
begin
  if Value.Length >= 3 then
  begin
    FNome := Value;
  end
  else
  begin
    raise ENomeInvalido.Create('Error Message');
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

