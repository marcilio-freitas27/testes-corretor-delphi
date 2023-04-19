unit Unit1;

interface

uses
  ///importando as fun��es
  DUnitX.TestFramework, Corretor;
type
  [TestFixture]
  TMyTestObject = class
  corretor01: TCorretor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    [TestCase('Primeiro corretor', 10000', '1000')]
    procedure corretor01.CalcularComissao(const, Entrada: Single, Saida: Single): Single;
  end;

implementation

procedure TMyTestObject.Setup;
begin

corretor01.Create;

end;

procedure TMyTestObject.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TMyTestObject);

end.
