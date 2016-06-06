unit uTanqueModel;

interface

type
  TTanqueModel = class
    private
      FDESCRICAO  : string;
      FID         : integer;
      FCOMBUSTUVEL: integer;
      procedure SetCOMBUSTUVEL(const Value: integer);
      procedure SetDESCRICAO(const Value: string);
      procedure SetID(const Value: integer);
    public
      property  ID          : integer read  FID           write SetID;
      property  DESCRICAO   : string  read  FDESCRICAO    write SetDESCRICAO;
      property  COMBUSTIVEL : integer read  FCOMBUSTUVEL  write SetCOMBUSTUVEL;

      procedure ClearClass;

      Constructor Create;
      Destructor Destroy; override;
  end;

implementation

{ TTanqueModel }

procedure TTanqueModel.ClearClass;
begin
  FDESCRICAO      :=  '';
  FID             :=  0;
  FCOMBUSTUVEL    :=  0;
end;

constructor TTanqueModel.Create;
begin
  ClearClass;
end;

destructor TTanqueModel.Destroy;
begin

  inherited;
end;

procedure TTanqueModel.SetCOMBUSTUVEL(const Value: integer);
begin
  FCOMBUSTUVEL    :=  Value;
end;

procedure TTanqueModel.SetDESCRICAO(const Value: string);
begin
  FDESCRICAO      :=  Value;
end;

procedure TTanqueModel.SetID(const Value: integer);
begin
  FID             :=  Value;
end;

end.
