unit uFrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, uFrmTanques, uFrmBombas, uFrmAbastecimentos, uFrmRelatorio,
  RLConsts ;

type
  TfrmPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    anques1: TMenuItem;
    Bombas1: TMenuItem;
    Abastecimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure anques1Click(Sender: TObject);
    procedure Bombas1Click(Sender: TObject);
    procedure Abastecimentos1Click(Sender: TObject);
    procedure Relatrios1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.Abastecimentos1Click(Sender: TObject);
begin
  if not(Assigned(frmAbastecimentos)) then
    Application.CreateForm(TfrmAbastecimentos, frmAbastecimentos);

  frmAbastecimentos.Show;
  frmAbastecimentos.BringToFront;
end;

procedure TfrmPrincipal.anques1Click(Sender: TObject);
begin
  if not(Assigned(frmTanques)) then
    Application.CreateForm(TfrmTanques, frmTanques);

  frmTanques.Show;
  frmTanques.BringToFront;
end;

procedure TfrmPrincipal.Bombas1Click(Sender: TObject);
begin
  if not(Assigned(frmBombas)) then
    Application.CreateForm(TfrmBombas, frmBombas);

  frmBombas.Show;
  frmBombas.BringToFront;
end;

procedure TfrmPrincipal.Relatrios1Click(Sender: TObject);
begin
  try
    Application.CreateForm(TfrmRelatorio, frmRelatorio);
    frmRelatorio.ShowModal;
  finally
    frmRelatorio.Release;
    frmRelatorio            :=  nil;
  end;
end;

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

initialization
  RLConsts.SetVersion(3,71,'B');

end.
