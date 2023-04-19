﻿unit Unit2;

interface

uses
  ///importando as funcoes
  DUnitX.TestFramework, Corretor2;
type
  [TestFixture]
  TMyTestObject = class
  private
     corretor01: TCorretor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('Primeiro corretor', '10000,1000')]
    procedure TestComissao(const Entrada, Saida: Single);
  end;

implementation

procedure TMyTestObject.Setup;
begin

  corretor01 := Tcorretor.Create;

end;

procedure TMyTestObject.TearDown;
begin
    corretor01.Free;
end;

procedure TMyTestObject.TestComissao(const Entrada, Saida: Single);
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.

