inherited frmBombas: TfrmBombas
  Caption = 'Cadastro de Bombas'
  ClientHeight = 238
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 263
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 197
    ExplicitTop = 197
  end
  inherited pnlDados: TPanel
    Height = 197
    ExplicitHeight = 197
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object Label2: TLabel
      Left = 16
      Top = 72
      Width = 59
      Height = 13
      Caption = 'DESCRI'#199#195'O'
    end
    object Label3: TLabel
      Left = 16
      Top = 128
      Width = 41
      Height = 13
      Caption = 'TANQUE'
    end
    object edId: TEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edDescricao: TEdit
      Left = 16
      Top = 88
      Width = 241
      Height = 21
      MaxLength = 10
      TabOrder = 1
    end
    object edTanque: TEdit
      Left = 16
      Top = 144
      Width = 201
      Height = 21
      MaxLength = 10
      ReadOnly = True
      TabOrder = 2
    end
    object btLocalizar: TButton
      Left = 223
      Top = 144
      Width = 37
      Height = 21
      Align = alCustom
      Caption = '...'
      TabOrder = 3
      OnClick = btLocalizarClick
    end
  end
  inherited pnlGrid: TPanel
    Height = 197
    ExplicitHeight = 197
    inherited gridDados: TDBGrid
      Height = 195
      OnDblClick = gridDadosDblClick
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmData.cdsBombas
    OnDataChange = dsDadosDataChange
    Left = 144
    Top = 112
  end
end