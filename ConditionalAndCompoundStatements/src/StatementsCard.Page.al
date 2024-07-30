page 50112 "Statement Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Statement Card';

    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Input';

                field(Difficulty; Difficulty)
                {
                    Caption = 'Difficulty';
                    ToolTip = 'The difficulty tool tip';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        GetSuggestion();
                    end;

                }

                field(Suggestion; Suggestion)
                {
                    Caption = 'Suggestion';
                    ToolTip = 'The Suggestion tool tip';
                    Editable = false;
                    ApplicationArea = All;

                }
            }

            group(Output)
            {
                Caption = 'Output';
                field(Level; Level)
                {
                    Caption = 'Level';
                    ToolTip = 'Level tool tip';
                    ApplicationArea = All;
                    Editable = false;

                }
            }


        }
    }



    var
        Level: Text[30];
        Suggestion: Text[80];
        Difficulty: Integer;

    local procedure GetSuggestion()
    begin
        Level := '';
        Suggestion := '';

        case Difficulty of
            1 .. 5:
                begin
                    Level := 'Beginner';
                    Suggestion := 'Take e-Learning or remote training';
                end;
            6 .. 8:
                begin
                    Level := 'Intermediate';
                    Suggestion := 'Attend instructor-Led';
                end;
            9 .. 10:
                begin
                    Level := 'Advanced';
                    Suggestion := 'Attend instructor-Led and self study';
                end;
        end;
    end;


}