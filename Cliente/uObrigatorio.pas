unit uObrigatorio;

interface

uses
Vcl.Controls, Vcl.Forms,  Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask;


  procedure prcValidarCamposObrigatorios ( Form: TForm );

implementation

uses
  System.SysUtils;

  procedure prcValidarCamposObrigatorios ( Form: TForm );
  var
  i :Integer;


begin
  for I := 0 to Form.ComponentCount - 1 do
  begin

    if Form.Components[i].Tag = 7 then
  begin

    //TEDIT
    if Form.Components[i] is TEdit then
      begin
        if ( ( Form.Components[i] as TEdit ).Hint <> '' ) and
           ( ( Form.Components[i] as TEdit ).Text = '' ) Then
         begin
         ShowMessage ('Faltou Preencher o Campo ' + ( Form.Components[i] as TEdit ).Hint);
         Abort;
         end;

      end;

    //TEDIT
    if Form.Components[i] is TEdit then
          begin
        if ( ( Form.Components[i] as TEdit ).Hint <> '' ) and
           ( ( Form.Components[i] as TEdit ).Text = '' ) then
         begin
         ShowMessage ('Faltou Preencher o Campo ' + ( Form.Components[i] as TEdit ).Hint);
         Abort;
         end;
        end
  end;



end;



end;
 end.