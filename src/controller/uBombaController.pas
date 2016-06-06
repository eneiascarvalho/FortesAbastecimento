unit uBombaController;

interface

uses SqlExpr, SysUtils, uBombaModel, uFuncoes;

type
  TBombaController = class
    private
      FDataSet  : TSQLQuery;
    public
      procedure Insert(BombaModel : TBombaModel);
      procedure Update(BombaModel : TBombaModel);
      procedure Delete(BombaModel : TBombaModel);
      procedure Select(BombaModel : TBombaModel);

      Constructor Create(Conn : TSQLConnection);
      Destructor Destroy; override;
  end;

implementation

{ TBombaController }

constructor TBombaController.Create(Conn: TSQLConnection);
begin
  FDataSet                  :=  TSQLQuery.Create(nil);
  FDataSet.SQLConnection    :=  Conn;
end;

procedure TBombaController.Delete(BombaModel: TBombaModel);
  function PodeDeletar : boolean;
  begin
    Result                  :=  True;

    FDataSet.Close;
    FDataSet.SQL.Clear;
    FDataSet.SQL.Add('Select                    ');
    FDataSet.SQL.Add('        Count(*) as Qtd   ');
    FDataSet.SQL.Add('From                      ');
    FDataSet.SQL.Add('    abastecimentos a      ');
    FDataSet.SQL.Add('Where                     ');
    FDataSet.SQL.Add('    a.id_bomba = :id      ');
    FDataSet.Params[0].Value:=  BombaModel.ID;
    FDataSet.Open;

    Result                  :=  not(FDataSet.FieldByName('Qtd').AsInteger > 0);
  end;
begin
  if not(PodeDeletar) then
    raise Exception.Create('Existe movimentação para esta bomba!')
  else
  begin
    FDataSet.Close;
    FDataSet.SQL.Clear;
    FDataSet.SQL.Add('Delete From bombas');
    FDataSet.SQL.Add('Where Id = :Id');
    FDataSet.Params[0].Value  :=  BombaModel.ID;
    FDataSet.ExecSQL;

    BombaModel.ID           :=  0;
    BombaModel.DESCRICAO    :=  '';
    BombaModel.ID_TANQUE    :=  0;
  end;
end;

destructor TBombaController.Destroy;
begin
  FDataSet.Destroy;
  inherited;
end;

procedure TBombaController.Insert(BombaModel: TBombaModel);
begin
  FDataSet.Close;
  FDataSet.SQL.Clear;
  FDataSet.SQL.Add('Insert Into bombas(');
  FDataSet.SQL.Add('  Id,');
  FDataSet.SQL.Add('  Descricao,');
  FDataSet.SQL.Add('  Id_Tanque');
  FDataSet.SQL.Add(')Values(');
  FDataSet.SQL.Add('  :Id,');
  FDataSet.SQL.Add('  :Descricao,');
  FDataSet.SQL.Add('  :Id_Tanque)');

  BombaModel.ID             :=  GenID('GEN_ID_BOMBAS');
  FDataSet.Params[0].Value  :=  BombaModel.ID;
  FDataSet.Params[1].Value  :=  BombaModel.DESCRICAO;
  FDataSet.Params[2].Value  :=  BombaModel.ID_TANQUE;

  FDataSet.ExecSQL;
end;

procedure TBombaController.Select(BombaModel : TBombaModel);
begin
  FDataSet.Close;
  FDataSet.SQL.Clear;
  FDataSet.SQL.Add('Select ID_TANQUE From bombas');
  FDataSet.SQL.Add('Where Id = :Id');
  FDataSet.Params[0].Value  :=  BombaModel.Id;
  FDataSet.Open;

  BombaModel.ID_TANQUE          :=  FDataSet.FieldByName('ID_TANQUE').AsInteger;
end;

procedure TBombaController.Update(BombaModel: TBombaModel);
begin
  FDataSet.Close;
  FDataSet.SQL.Clear;
  FDataSet.SQL.Add('Update bombas Set');
  FDataSet.SQL.Add('  Descricao = :Descricao,');
  FDataSet.SQL.Add('  Id_Tanque = :Id_Tanque');
  FDataSet.SQL.Add('Where');
  FDataSet.SQL.Add('  Id = :Id');

  FDataSet.Params[0].Value  :=  BombaModel.DESCRICAO;
  FDataSet.Params[1].Value  :=  BombaModel.ID_TANQUE;
  FDataSet.Params[2].Value  :=  BombaModel.ID;

  FDataSet.ExecSQL;
end;

end.
