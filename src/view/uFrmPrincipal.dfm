object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Abastece Fortes - Posto ABC'
  ClientHeight = 374
  ClientWidth = 668
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = mnuPrincipal
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object mnuPrincipal: TMainMenu
    Left = 208
    Top = 120
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object anques1: TMenuItem
        Caption = 'Tanques'
        OnClick = anques1Click
      end
      object Bombas1: TMenuItem
        Caption = 'Bombas'
        OnClick = Bombas1Click
      end
    end
    object Abastecimentos1: TMenuItem
      Caption = 'Abastecimentos'
      OnClick = Abastecimentos1Click
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      OnClick = Relatrios1Click
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      OnClick = Sair1Click
    end
  end
end
