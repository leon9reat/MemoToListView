unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    ListView1: TListView;
    btnProses: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnProsesClick(Sender: TObject);
  private
    { Private declarations }
    procedure Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
    procedure InsertListView(AString: string);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{-------------------------------------------------------------------------------
  Procedure: TForm1.FormCreate
  Author:    BENK
  DateTime:  2021.06.22 11:03:28
-------------------------------------------------------------------------------}
procedure TForm1.FormCreate(Sender: TObject);
begin
  //Memo1.Lines.Clear;
  ListView1.Items.Clear;
end;

{-------------------------------------------------------------------------------
  Procedure: TForm1.btnProsesClick
  Author:    BENK
  DateTime:  2021.06.22 11:03:31
-------------------------------------------------------------------------------}
procedure TForm1.btnProsesClick(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to Memo1.Lines.Count - 1 do
    InsertListView(Memo1.Lines[i]);
end;

{-------------------------------------------------------------------------------
  Procedure: TForm1.InsertListView
  Author:    BENK
  DateTime:  2021.06.22 11:02:20
-------------------------------------------------------------------------------}
procedure TForm1.InsertListView(AString: string);
var
  OutPutList: TStringList;
  i: Integer;
  Item: TListItem;
begin
  OutPutList := TStringList.Create;
  try
    Split(',', AString, OutPutList);
    for i := 0 to OutPutList.Count - 1 do begin
      with ListView1 do begin
        if i = 0 then begin
          Item := ListView1.Items.Add;
          Item.Caption := OutPutList[i];
        end
        else
          Item.SubItems.Add(OutPutList[i]);
      end;
    end;
  finally
    OutPutList.Free;
  end;
end;

{-------------------------------------------------------------------------------
  Procedure: TForm1.Split
  Author:    BENK
  DateTime:  2021.06.22 11:03:12
-------------------------------------------------------------------------------}
procedure TForm1.Split(Delimiter: Char; Str: string; ListOfStrings: TStrings);
begin
  ListOfStrings.Clear;
  ListOfStrings.Delimiter := Delimiter;
  ListOfStrings.StrictDelimiter := True; // Requires D2006 or newer.
  ListOfStrings.DelimitedText := Str;
end;

end.

