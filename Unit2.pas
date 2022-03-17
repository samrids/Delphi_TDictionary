unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  System.Generics.Collections,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    btn_Close: TButton;
    Label1: TLabel;
    ListBox1: TListBox;
    RadioGroup1: TRadioGroup;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btn_CloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    TIOBEMarch2022Programming: TDictionary<Byte, string>;
    procedure GenerateDict;
    procedure AddDictToControl; // press control + shift +
    function TryGetKey(const Value: string): Byte;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.AddDictToControl;
var
  LArray: TArray<Byte>;
  Value: String;
  i: Byte;
begin
  ListBox1.Items.Clear;
  RadioGroup1.Items.Clear;
  ComboBox1.Items.Clear;

  LArray := TIOBEMarch2022Programming.Keys.ToArray;    //Sorting key of Dictionary
  TArray.Sort<Byte>(LArray);

  for i in LArray do
  begin
    TIOBEMarch2022Programming.TryGetValue(i, Value);
    ListBox1.Items.Add(Value);
    RadioGroup1.Items.Add(Value);
    ComboBox1.Items.Add(Value);
  end;

//  for var DicItem in TIOBEMarch2022Programming do
//  begin
//    ListBox1.Items.Add(DicItem.Value);
//    RadioGroup1.Items.Add(DicItem.Value);
//    ComboBox1.Items.Add(DicItem.Value);
//  end;

end;

procedure TForm2.btn_CloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
var
  Value: string;
  Key: Byte;
begin
  Key := TryGetKey(ComboBox1.Items[ComboBox1.ItemIndex]);
  TIOBEMarch2022Programming.TryGetValue(Key, Value);
  Label1.Caption := format('Key : %d Value: %s', [Key, Value]);
  ListBox1.ItemIndex := ComboBox1.ItemIndex;
  RadioGroup1.ItemIndex := ComboBox1.ItemIndex;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TIOBEMarch2022Programming.free;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  GenerateDict;
end;

procedure TForm2.GenerateDict;
begin
  // Create dict value
  TIOBEMarch2022Programming := TDictionary<Byte, string>.Create;
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
  AddDictToControl;
end;

procedure TForm2.ListBox1Click(Sender: TObject);
var
  Value: string;
  Key: Byte;
begin
  Key := TryGetKey(ListBox1.Items[ListBox1.ItemIndex]);
  TIOBEMarch2022Programming.TryGetValue(Key, Value);
  Label1.Caption := format('Key : %d Value: %s', [Key, Value]);
  RadioGroup1.ItemIndex := ListBox1.ItemIndex;
  ComboBox1.ItemIndex := ListBox1.ItemIndex;
end;

procedure TForm2.RadioGroup1Click(Sender: TObject);
var
  Value: string;
  Key: Byte;
begin
  Key := TryGetKey(RadioGroup1.Items[RadioGroup1.ItemIndex]);
  TIOBEMarch2022Programming.TryGetValue(Key, Value);
  Label1.Caption := format('Key : %d Value: %s', [Key, Value]);

  ListBox1.ItemIndex := RadioGroup1.ItemIndex;
  ComboBox1.ItemIndex := RadioGroup1.ItemIndex;
end;

function TForm2.TryGetKey(const Value: string): Byte;
begin
  Result := 0; // When find not found
  for var DictItem in TIOBEMarch2022Programming do
  begin
    if (Value = DictItem.Value) then
    begin
      Result := DictItem.Key;
      Break;
    end;
  end;
end;

end.
