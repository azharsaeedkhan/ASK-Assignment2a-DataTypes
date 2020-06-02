page 90302 "Data Type Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Course Card';

    layout
    {
        area(Content)
        {

        }
    }

    actions
    {
        area(Processing)
        {

        }
    }
    trigger OnOpenPage()
    begin
        MESSAGE('The value of %1 is %2', 'YesOrNo', YesOrNo);
        MESSAGE('The value of %1 is %2', 'Amount', Amount);
        MESSAGE('The value of %1 is %2', 'When Was It', "When Was It");
        MESSAGE('The value of %1 is %2', 'What Time', "What Time");
        MESSAGE('The value of %1 is %2', 'Description', Description);
        MESSAGE('The value of %1 is %2', 'Code Number', "Code Number");
        MESSAGE('The value of %1 is %2', 'Ch', Ch);
        MESSAGE('The value of %1 is %2', 'Color', Color);
    end;

    var
        LoopNo: Integer;
        YesOrNo: Boolean;
        Amount: Decimal;
        "When Was It": Date;
        "What Time": Time;
        Description: Text[30];
        "Code Number": Code[10];
        Ch: Char;
        Color: Option "Red","Orange","Yellow","Green","Blue","Violet";

}