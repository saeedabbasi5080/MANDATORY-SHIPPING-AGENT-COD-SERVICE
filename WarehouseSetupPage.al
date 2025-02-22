page 50201 "Warehouse Setup Page"
{
    PageType = Card;
    SourceTable = "Warehouse Setup Ext";
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            field("Default Dimension"; Rec."Default Dimension")
            {
                ApplicationArea = All;
            }
        }
    }
}

