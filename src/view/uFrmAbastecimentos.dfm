inherited FrmAbastecimentos: TFrmAbastecimentos
  Caption = 'Cadastro de Abastecimentos'
  ClientHeight = 340
  OnClose = FormClose
  OnShow = FormShow
  ExplicitWidth = 572
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnlBotoes: TPanel
    Top = 299
    ExplicitTop = 299
  end
  inherited pnlDados: TPanel
    Height = 299
    ExplicitHeight = 299
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
      Width = 27
      Height = 13
      Caption = 'DATA'
    end
    object Label3: TLabel
      Left = 16
      Top = 128
      Width = 35
      Height = 13
      Caption = 'BOMBA'
    end
    object Label4: TLabel
      Left = 16
      Top = 184
      Width = 36
      Height = 13
      Caption = 'LITROS'
    end
    object Label5: TLabel
      Left = 16
      Top = 240
      Width = 33
      Height = 13
      Caption = 'VALOR'
    end
    object edId: TEdit
      Left = 16
      Top = 32
      Width = 65
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edBomba: TEdit
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
    object edData: TMaskEdit
      Left = 16
      Top = 88
      Width = 65
      Height = 21
      EditMask = '99/99/9999;1;_'
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = edDataExit
    end
    object edLitros: TEdit
      Left = 16
      Top = 200
      Width = 65
      Height = 21
      Alignment = taRightJustify
      MaxLength = 10
      TabOrder = 4
      OnExit = edLitrosExit
    end
    object edValor: TEdit
      Left = 16
      Top = 256
      Width = 65
      Height = 21
      Alignment = taRightJustify
      MaxLength = 10
      TabOrder = 5
      OnExit = edValorExit
    end
  end
  inherited pnlGrid: TPanel
    Height = 299
    ExplicitHeight = 299
    inherited gridDados: TDBGrid
      Height = 297
    end
  end
  inherited dsDados: TDataSource
    DataSet = dmData.cdsAbastecimentos
    OnDataChange = dsDadosDataChange
    Left = 32
    Top = 200
  end
end
