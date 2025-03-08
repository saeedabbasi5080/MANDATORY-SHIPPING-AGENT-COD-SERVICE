table 50201 "Warehouse Setup Ext"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(50235; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
        }
        field(50236; "Default Dimension"; Code[20])
        {
            Caption = 'Default Dimension';
            TableRelation = "Dimension";
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}