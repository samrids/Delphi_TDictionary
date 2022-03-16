unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    Button1: TButton;
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
  private
    { Private declarations }
    // TIOBE Index for March 2022
    TIOBEMarch2022Programming: TDictionary<Byte, string>;
    procedure GenDict; // Press control + shift + c
    function TryGetKey(const Value: string): Byte;
    procedure AddDictToControls;

  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}
{ TForm2 }

procedure TForm2.AddDictToControls;
var
  LArray: TArray<Byte>;
  i: Byte;
  Value: String;
begin
  ListBox1.Items.Clear;
  RadioGroup1.Items.Clear;
  ComboBox1.Items.Clear;
  LArray := TIOBEMarch2022Programming.Keys.ToArray;
  TArray.Sort<Byte>(LArray);

//  for var DictItem in TIOBEMarch2022Programming do
//  begin
//     ListBox1.Items.Add(DictItem.Value);
//     RadioGroup1.Items.Add(DictItem.Value);
//     ComboBox1.Items.Add(DictItem.Value);
//  end;

  for i in LArray do
  begin
    TIOBEMarch2022Programming.TryGetValue(i, Value);

    ListBox1.Items.Add(Value);
    RadioGroup1.Items.Add(Value);
    ComboBox1.Items.Add(Value);
    // ListBox1.Items.Add(DictItem.Value);
    // RadioGroup1.Items.Add(DictItem.Value);
    // ComboBox1.Items.Add(DictItem.Value);
  end;

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
var
  Key: Byte;
  Value: String;
begin
  if TIOBEMarch2022Programming.ContainsValue
    (ComboBox1.Items[ComboBox1.ItemIndex]) then
  begin
    Key := TryGetKey(ComboBox1.Items[ComboBox1.ItemIndex]);
    TIOBEMarch2022Programming.TryGetValue(Key, Value);
    Label1.Caption := format('Key = %d, Value = %s', [Key, Value]);
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  GenDict;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  TIOBEMarch2022Programming.free;
end;

procedure TForm2.GenDict;
begin
  TIOBEMarch2022Programming := TDictionary<Byte, string>.Create;
  //datasource ==> https://www.tiobe.com/tiobe-index/
  TIOBEMarch2022Programming.Add(1, 'Python');
  TIOBEMarch2022Programming.Add(2, 'C');
  TIOBEMarch2022Programming.Add(3, 'Java');
  TIOBEMarch2022Programming.Add(4, 'C++');
  TIOBEMarch2022Programming.Add(5, 'C#');
  TIOBEMarch2022Programming.Add(6, 'Visual Basic');
  TIOBEMarch2022Programming.Add(7, 'JavaScript');
  TIOBEMarch2022Programming.Add(8, 'PHP');
  TIOBEMarch2022Programming.Add(9, 'Assembly language');
  TIOBEMarch2022Programming.Add(10, 'SQL');
  TIOBEMarch2022Programming.Add(11, 'R');
  TIOBEMarch2022Programming.Add(12, 'Delphi/Object Pascal');
  TIOBEMarch2022Programming.Add(13, 'Go');
  TIOBEMarch2022Programming.Add(14, 'Swift');
  TIOBEMarch2022Programming.Add(15, 'MATLAB');
  TIOBEMarch2022Programming.Add(16, 'Ruby');
  TIOBEMarch2022Programming.Add(17, 'Classic Visual Basic');
  TIOBEMarch2022Programming.Add(18, 'Objective-C');
  TIOBEMarch2022Programming.Add(19, 'Perl');
  TIOBEMarch2022Programming.Add(20, 'Lua');

  AddDictToControls;
end;

procedure TForm2.ListBox1Click(Sender: TObject);
var
  Key: Byte;
  Value: String;
begin
  if TIOBEMarch2022Programming.ContainsValue(ListBox1.Items[ListBox1.ItemIndex])
  then
  begin
    Key := TryGetKey(ListBox1.Items[ListBox1.ItemIndex]);
    TIOBEMarch2022Programming.TryGetValue(Key, Value);
    Label1.Caption := format('Key = %d, Value = %s', [Key, Value]);
  end;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
var
  Key: Byte;
  Value: String;
begin
  if TIOBEMarch2022Programming.ContainsValue
    (RadioGroup1.Items[RadioGroup1.ItemIndex]) then
  begin
    Key := TryGetKey(RadioGroup1.Items[RadioGroup1.ItemIndex]);
    TIOBEMarch2022Programming.TryGetValue(Key, Value);
    Label1.Caption := format('Key = %d, Value = %s', [Key, Value]);
  end;
end;

function TForm2.TryGetKey(const Value: string): Byte;
begin
  Result := 0;
  for var Elitem in TIOBEMarch2022Programming do
  begin
    if (Value = Elitem.Value) then
    begin
      Result := Elitem.Key;
      Break;
    end;
  end;
end;

end.
