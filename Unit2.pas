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
    [TestCase('Comissao', '10000,1000')]
    procedure TestComissao(const Entrada, Saida: Single);

    [Test]
    [TestCase('Nome', 'Ze')]
    procedure TestNome(const Entrada: string);

    [Test]
    [TestCase('Data', '10000,1000')]
    procedure TestData(const Entrada, Saida: Single);

    [Test]
    [TestCase('Salario', '10000,1000')]
    procedure TestSalario(const Entrada, Saida: Single);
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
      Assert.AreEqual(corretor01.calcularComissao(Entrada), Saida);
end;

procedure TMyTestObject.TestData(const Entrada, Saida: Single);
begin
  Assert.WillRaise(
  procedure
  begin
    corretor01.data := Entrada;
  end, EDataInvalida);
end;

procedure TMyTestObject.TestNome(const Entrada: string);
begin
  Assert.WillRaise(
    procedure
    begin
      corretor01.nome := Entrada;
    end, ENomeInvalido);
end;

procedure TMyTestObject.TestSalario(const Entrada, Saida: Single);
begin

end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.

