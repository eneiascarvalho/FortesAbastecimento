inherited frmTanques: TfrmTanques
  Caption = 'Cadastro de Tanques'
  ClientHeight = 245
  OnClose = FormClose
  OnShow = FormShow
  ExplicitHeight = 270
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 204
    ExplicitTop = 204
  end
  inherited pnlDados: TPanel
    Height = 204
    ExplicitHeight = 204
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
    object rgCombustivel: TRadioGroup
      Left = 16
      Top = 128
      Width = 241
      Height = 57
      Caption = 'COMBUSTIVEL'
      Columns = 2
      Items.Strings = (
        'GASOLINA'
        'OLEO DIESEL')
      TabOrder = 2
    end
  end
  inherited pnlGrid: TPanel
    Height = 204
    ExplicitHeight = 204
    inherited gridDados: TDBGrid
      Height = 202
      OnDblClick = gridDadosDblClick
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmData.cdsTanques
    OnDataChange = dsDadosDataChange
    Left = 88
    Top = 120
  end
end
