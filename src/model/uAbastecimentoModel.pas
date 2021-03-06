unit uAbastecimentoModel;

interface

uses SysUtils;

type
  TAbastecimentoModel = class
    private
      FID_BOMBA     : integer;
      FVLR_IMPOSTO  : Double;
      FID           : integer;
      FLITROS       : Double;
      FDATA         : TDate;
      FVLR_ABASTECE : Double;
      procedure SetDATA(const Value: TDate);
      procedure SetID(const Value: integer);
      procedure SetID_BOMBA(const Value: integer);
      procedure SetLITROS(const Value: Double);
      procedure SetVLR_ABASTECE(const Value: Double);
      procedure SetVLR_IMPOSTO(const Value: Double);
    public
      property  ID            : integer   read  FID           write SetID;
      property  DATA          : TDate     read  FDATA         write SetDATA;
      property  ID_BOMBA      : integer   read  FID_BOMBA     write SetID_BOMBA;
      property  LITROS        : Double    read  FLITROS       write SetLITROS;
      property  VLR_ABASTECE  : Double    read  FVLR_ABASTECE write SetVLR_ABASTECE;
      property  VLR_IMPOSTO   : Double    read  FVLR_IMPOSTO  write SetVLR_IMPOSTO;

      procedure ClearClass;
      Constructor Create;
  end;

implementation

{ TAbastecimentoModel }

procedure TAbastecimentoModel.ClearClass;
begin
  FID_BOMBA       :=  0;
  FVLR_IMPOSTO    :=  0;
  FID             :=  0;
  FLITROS         :=  0;
  FDATA           :=  Date;
  FVLR_ABASTECE   :=  0;
end;

constructor TAbastecimentoModel.Create;
begin
  ClearClass;
end;

procedure TAbastecimentoModel.SetDATA(const Value: TDate);
begin
  FDATA           :=  Value;
end;

procedure TAbastecimentoModel.SetID(const Value: integer);
begin
  FID             :=  Value;
end;

procedure TAbastecimentoModel.SetID_BOMBA(const Value: integer);
begin
  FID_BOMBA       :=  Value;
end;

procedure TAbastecimentoModel.SetLITROS(const Value: Double);
begin
  FLITROS         :=  Value;
end;

procedure TAbastecimentoModel.SetVLR_ABASTECE(const Value: Double);
begin
  FVLR_ABASTECE   :=  Value;
end;

procedure TAbastecimentoModel.SetVLR_IMPOSTO(const Value: Double);
begin
  FVLR_IMPOSTO    :=  Value;
end;

end.
