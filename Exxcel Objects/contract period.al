table 50120 "RFQ Contract Period Line"
{
    // TDD 2.6 - contract period calculation (up to 15 years) per comparison worksheet line.
    // Year fields are numbered 1000 + Year * 20 + Measure (see Recalculate) - do not renumber.
    Caption = 'RFQ Contract Period Line';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "RFQ No."; Code[20]) { Caption = 'RFQ No.'; Editable = false; }
        field(2; "Option Code"; Code[20]) { Caption = 'Option Code'; Editable = false; }
        field(3; "Line Number"; Integer) { Caption = 'Line No.'; Editable = false; }
        field(4; "Item No."; Code[20]) { Caption = 'Item No.'; Editable = false; }
        field(5; "Item Description"; Text[100]) { Caption = 'Item Description'; Editable = false; }
        field(6; "Long Description"; Text[2048]) { Caption = 'Long Description'; Editable = false; }
        field(7; Quantity; Decimal) { Caption = 'Quantity'; DecimalPlaces = 0 : 5; Editable = false; }
        field(8; "Shipping Charge"; Code[20]) { Caption = 'Shipping Charge'; TableRelation = "Item Charge"; Editable = false; }
        field(9; "Duty Charge"; Code[20]) { Caption = 'Duty Charge'; TableRelation = "Item Charge"; Editable = false; }
        field(10; "Currency Code"; Code[10]) { Caption = 'Currency Code'; TableRelation = Currency; Editable = false; }
        field(11; "Contract Period"; Integer) { Caption = 'Contract Period (Years)'; Editable = false; }
        field(1021; "Unit Price Y1"; Decimal)
        {
            Caption = 'Unit Price (Year 1)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1022; "Amount Incl. WHT Y1"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 1)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1023; "Unit Price Incr. % Y1"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 1)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1024; "Unit Cost Y1"; Decimal)
        {
            Caption = 'Unit Cost (Year 1)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1025; "Cost of Material Y1"; Decimal)
        {
            Caption = 'Cost of Material (Year 1)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1026; "Cost Incr. % Y1"; Decimal)
        {
            Caption = 'Cost Increment % (Year 1)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1027; "Shipping Y1"; Decimal)
        {
            Caption = 'Shipping (Year 1)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1028; "Shipping Incr. % Y1"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 1)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1029; "Duty Y1"; Decimal)
        {
            Caption = 'Duty (Year 1)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1030; "Duty Incr. % Y1"; Decimal)
        {
            Caption = 'Duty Increment % (Year 1)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1031; "Total Shipping Y1"; Decimal)
        {
            Caption = 'Total Shipping (Year 1)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1032; "Cost per Unit Y1"; Decimal)
        {
            Caption = 'Cost per Unit (Year 1)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1033; "Total Cost Y1"; Decimal)
        {
            Caption = 'Total Cost (Year 1)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1034; "GM Y1"; Decimal)
        {
            Caption = 'GM (Year 1)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1035; "GM % Y1"; Decimal)
        {
            Caption = 'GM % (Year 1)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1041; "Unit Price Y2"; Decimal)
        {
            Caption = 'Unit Price (Year 2)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1042; "Amount Incl. WHT Y2"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 2)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1043; "Unit Price Incr. % Y2"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 2)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1044; "Unit Cost Y2"; Decimal)
        {
            Caption = 'Unit Cost (Year 2)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1045; "Cost of Material Y2"; Decimal)
        {
            Caption = 'Cost of Material (Year 2)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1046; "Cost Incr. % Y2"; Decimal)
        {
            Caption = 'Cost Increment % (Year 2)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1047; "Shipping Y2"; Decimal)
        {
            Caption = 'Shipping (Year 2)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1048; "Shipping Incr. % Y2"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 2)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1049; "Duty Y2"; Decimal)
        {
            Caption = 'Duty (Year 2)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1050; "Duty Incr. % Y2"; Decimal)
        {
            Caption = 'Duty Increment % (Year 2)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1051; "Total Shipping Y2"; Decimal)
        {
            Caption = 'Total Shipping (Year 2)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1052; "Cost per Unit Y2"; Decimal)
        {
            Caption = 'Cost per Unit (Year 2)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1053; "Total Cost Y2"; Decimal)
        {
            Caption = 'Total Cost (Year 2)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1054; "GM Y2"; Decimal)
        {
            Caption = 'GM (Year 2)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1055; "GM % Y2"; Decimal)
        {
            Caption = 'GM % (Year 2)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1061; "Unit Price Y3"; Decimal)
        {
            Caption = 'Unit Price (Year 3)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1062; "Amount Incl. WHT Y3"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 3)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1063; "Unit Price Incr. % Y3"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 3)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1064; "Unit Cost Y3"; Decimal)
        {
            Caption = 'Unit Cost (Year 3)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1065; "Cost of Material Y3"; Decimal)
        {
            Caption = 'Cost of Material (Year 3)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1066; "Cost Incr. % Y3"; Decimal)
        {
            Caption = 'Cost Increment % (Year 3)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1067; "Shipping Y3"; Decimal)
        {
            Caption = 'Shipping (Year 3)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1068; "Shipping Incr. % Y3"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 3)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1069; "Duty Y3"; Decimal)
        {
            Caption = 'Duty (Year 3)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1070; "Duty Incr. % Y3"; Decimal)
        {
            Caption = 'Duty Increment % (Year 3)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1071; "Total Shipping Y3"; Decimal)
        {
            Caption = 'Total Shipping (Year 3)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1072; "Cost per Unit Y3"; Decimal)
        {
            Caption = 'Cost per Unit (Year 3)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1073; "Total Cost Y3"; Decimal)
        {
            Caption = 'Total Cost (Year 3)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1074; "GM Y3"; Decimal)
        {
            Caption = 'GM (Year 3)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1075; "GM % Y3"; Decimal)
        {
            Caption = 'GM % (Year 3)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1081; "Unit Price Y4"; Decimal)
        {
            Caption = 'Unit Price (Year 4)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1082; "Amount Incl. WHT Y4"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 4)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1083; "Unit Price Incr. % Y4"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 4)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1084; "Unit Cost Y4"; Decimal)
        {
            Caption = 'Unit Cost (Year 4)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1085; "Cost of Material Y4"; Decimal)
        {
            Caption = 'Cost of Material (Year 4)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1086; "Cost Incr. % Y4"; Decimal)
        {
            Caption = 'Cost Increment % (Year 4)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1087; "Shipping Y4"; Decimal)
        {
            Caption = 'Shipping (Year 4)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1088; "Shipping Incr. % Y4"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 4)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1089; "Duty Y4"; Decimal)
        {
            Caption = 'Duty (Year 4)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1090; "Duty Incr. % Y4"; Decimal)
        {
            Caption = 'Duty Increment % (Year 4)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1091; "Total Shipping Y4"; Decimal)
        {
            Caption = 'Total Shipping (Year 4)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1092; "Cost per Unit Y4"; Decimal)
        {
            Caption = 'Cost per Unit (Year 4)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1093; "Total Cost Y4"; Decimal)
        {
            Caption = 'Total Cost (Year 4)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1094; "GM Y4"; Decimal)
        {
            Caption = 'GM (Year 4)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1095; "GM % Y4"; Decimal)
        {
            Caption = 'GM % (Year 4)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1101; "Unit Price Y5"; Decimal)
        {
            Caption = 'Unit Price (Year 5)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1102; "Amount Incl. WHT Y5"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 5)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1103; "Unit Price Incr. % Y5"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 5)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1104; "Unit Cost Y5"; Decimal)
        {
            Caption = 'Unit Cost (Year 5)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1105; "Cost of Material Y5"; Decimal)
        {
            Caption = 'Cost of Material (Year 5)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1106; "Cost Incr. % Y5"; Decimal)
        {
            Caption = 'Cost Increment % (Year 5)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1107; "Shipping Y5"; Decimal)
        {
            Caption = 'Shipping (Year 5)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1108; "Shipping Incr. % Y5"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 5)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1109; "Duty Y5"; Decimal)
        {
            Caption = 'Duty (Year 5)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1110; "Duty Incr. % Y5"; Decimal)
        {
            Caption = 'Duty Increment % (Year 5)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1111; "Total Shipping Y5"; Decimal)
        {
            Caption = 'Total Shipping (Year 5)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1112; "Cost per Unit Y5"; Decimal)
        {
            Caption = 'Cost per Unit (Year 5)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1113; "Total Cost Y5"; Decimal)
        {
            Caption = 'Total Cost (Year 5)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1114; "GM Y5"; Decimal)
        {
            Caption = 'GM (Year 5)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1115; "GM % Y5"; Decimal)
        {
            Caption = 'GM % (Year 5)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1121; "Unit Price Y6"; Decimal)
        {
            Caption = 'Unit Price (Year 6)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1122; "Amount Incl. WHT Y6"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 6)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1123; "Unit Price Incr. % Y6"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 6)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1124; "Unit Cost Y6"; Decimal)
        {
            Caption = 'Unit Cost (Year 6)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1125; "Cost of Material Y6"; Decimal)
        {
            Caption = 'Cost of Material (Year 6)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1126; "Cost Incr. % Y6"; Decimal)
        {
            Caption = 'Cost Increment % (Year 6)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1127; "Shipping Y6"; Decimal)
        {
            Caption = 'Shipping (Year 6)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1128; "Shipping Incr. % Y6"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 6)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1129; "Duty Y6"; Decimal)
        {
            Caption = 'Duty (Year 6)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1130; "Duty Incr. % Y6"; Decimal)
        {
            Caption = 'Duty Increment % (Year 6)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1131; "Total Shipping Y6"; Decimal)
        {
            Caption = 'Total Shipping (Year 6)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1132; "Cost per Unit Y6"; Decimal)
        {
            Caption = 'Cost per Unit (Year 6)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1133; "Total Cost Y6"; Decimal)
        {
            Caption = 'Total Cost (Year 6)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1134; "GM Y6"; Decimal)
        {
            Caption = 'GM (Year 6)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1135; "GM % Y6"; Decimal)
        {
            Caption = 'GM % (Year 6)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1141; "Unit Price Y7"; Decimal)
        {
            Caption = 'Unit Price (Year 7)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1142; "Amount Incl. WHT Y7"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 7)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1143; "Unit Price Incr. % Y7"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 7)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1144; "Unit Cost Y7"; Decimal)
        {
            Caption = 'Unit Cost (Year 7)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1145; "Cost of Material Y7"; Decimal)
        {
            Caption = 'Cost of Material (Year 7)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1146; "Cost Incr. % Y7"; Decimal)
        {
            Caption = 'Cost Increment % (Year 7)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1147; "Shipping Y7"; Decimal)
        {
            Caption = 'Shipping (Year 7)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1148; "Shipping Incr. % Y7"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 7)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1149; "Duty Y7"; Decimal)
        {
            Caption = 'Duty (Year 7)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1150; "Duty Incr. % Y7"; Decimal)
        {
            Caption = 'Duty Increment % (Year 7)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1151; "Total Shipping Y7"; Decimal)
        {
            Caption = 'Total Shipping (Year 7)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1152; "Cost per Unit Y7"; Decimal)
        {
            Caption = 'Cost per Unit (Year 7)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1153; "Total Cost Y7"; Decimal)
        {
            Caption = 'Total Cost (Year 7)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1154; "GM Y7"; Decimal)
        {
            Caption = 'GM (Year 7)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1155; "GM % Y7"; Decimal)
        {
            Caption = 'GM % (Year 7)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1161; "Unit Price Y8"; Decimal)
        {
            Caption = 'Unit Price (Year 8)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1162; "Amount Incl. WHT Y8"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 8)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1163; "Unit Price Incr. % Y8"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 8)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1164; "Unit Cost Y8"; Decimal)
        {
            Caption = 'Unit Cost (Year 8)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1165; "Cost of Material Y8"; Decimal)
        {
            Caption = 'Cost of Material (Year 8)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1166; "Cost Incr. % Y8"; Decimal)
        {
            Caption = 'Cost Increment % (Year 8)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1167; "Shipping Y8"; Decimal)
        {
            Caption = 'Shipping (Year 8)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1168; "Shipping Incr. % Y8"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 8)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1169; "Duty Y8"; Decimal)
        {
            Caption = 'Duty (Year 8)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1170; "Duty Incr. % Y8"; Decimal)
        {
            Caption = 'Duty Increment % (Year 8)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1171; "Total Shipping Y8"; Decimal)
        {
            Caption = 'Total Shipping (Year 8)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1172; "Cost per Unit Y8"; Decimal)
        {
            Caption = 'Cost per Unit (Year 8)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1173; "Total Cost Y8"; Decimal)
        {
            Caption = 'Total Cost (Year 8)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1174; "GM Y8"; Decimal)
        {
            Caption = 'GM (Year 8)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1175; "GM % Y8"; Decimal)
        {
            Caption = 'GM % (Year 8)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1181; "Unit Price Y9"; Decimal)
        {
            Caption = 'Unit Price (Year 9)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1182; "Amount Incl. WHT Y9"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 9)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1183; "Unit Price Incr. % Y9"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 9)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1184; "Unit Cost Y9"; Decimal)
        {
            Caption = 'Unit Cost (Year 9)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1185; "Cost of Material Y9"; Decimal)
        {
            Caption = 'Cost of Material (Year 9)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1186; "Cost Incr. % Y9"; Decimal)
        {
            Caption = 'Cost Increment % (Year 9)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1187; "Shipping Y9"; Decimal)
        {
            Caption = 'Shipping (Year 9)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1188; "Shipping Incr. % Y9"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 9)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1189; "Duty Y9"; Decimal)
        {
            Caption = 'Duty (Year 9)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1190; "Duty Incr. % Y9"; Decimal)
        {
            Caption = 'Duty Increment % (Year 9)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1191; "Total Shipping Y9"; Decimal)
        {
            Caption = 'Total Shipping (Year 9)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1192; "Cost per Unit Y9"; Decimal)
        {
            Caption = 'Cost per Unit (Year 9)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1193; "Total Cost Y9"; Decimal)
        {
            Caption = 'Total Cost (Year 9)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1194; "GM Y9"; Decimal)
        {
            Caption = 'GM (Year 9)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1195; "GM % Y9"; Decimal)
        {
            Caption = 'GM % (Year 9)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1201; "Unit Price Y10"; Decimal)
        {
            Caption = 'Unit Price (Year 10)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1202; "Amount Incl. WHT Y10"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 10)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1203; "Unit Price Incr. % Y10"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 10)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1204; "Unit Cost Y10"; Decimal)
        {
            Caption = 'Unit Cost (Year 10)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1205; "Cost of Material Y10"; Decimal)
        {
            Caption = 'Cost of Material (Year 10)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1206; "Cost Incr. % Y10"; Decimal)
        {
            Caption = 'Cost Increment % (Year 10)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1207; "Shipping Y10"; Decimal)
        {
            Caption = 'Shipping (Year 10)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1208; "Shipping Incr. % Y10"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 10)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1209; "Duty Y10"; Decimal)
        {
            Caption = 'Duty (Year 10)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1210; "Duty Incr. % Y10"; Decimal)
        {
            Caption = 'Duty Increment % (Year 10)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1211; "Total Shipping Y10"; Decimal)
        {
            Caption = 'Total Shipping (Year 10)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1212; "Cost per Unit Y10"; Decimal)
        {
            Caption = 'Cost per Unit (Year 10)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1213; "Total Cost Y10"; Decimal)
        {
            Caption = 'Total Cost (Year 10)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1214; "GM Y10"; Decimal)
        {
            Caption = 'GM (Year 10)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1215; "GM % Y10"; Decimal)
        {
            Caption = 'GM % (Year 10)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1221; "Unit Price Y11"; Decimal)
        {
            Caption = 'Unit Price (Year 11)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1222; "Amount Incl. WHT Y11"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 11)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1223; "Unit Price Incr. % Y11"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 11)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1224; "Unit Cost Y11"; Decimal)
        {
            Caption = 'Unit Cost (Year 11)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1225; "Cost of Material Y11"; Decimal)
        {
            Caption = 'Cost of Material (Year 11)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1226; "Cost Incr. % Y11"; Decimal)
        {
            Caption = 'Cost Increment % (Year 11)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1227; "Shipping Y11"; Decimal)
        {
            Caption = 'Shipping (Year 11)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1228; "Shipping Incr. % Y11"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 11)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1229; "Duty Y11"; Decimal)
        {
            Caption = 'Duty (Year 11)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1230; "Duty Incr. % Y11"; Decimal)
        {
            Caption = 'Duty Increment % (Year 11)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1231; "Total Shipping Y11"; Decimal)
        {
            Caption = 'Total Shipping (Year 11)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1232; "Cost per Unit Y11"; Decimal)
        {
            Caption = 'Cost per Unit (Year 11)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1233; "Total Cost Y11"; Decimal)
        {
            Caption = 'Total Cost (Year 11)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1234; "GM Y11"; Decimal)
        {
            Caption = 'GM (Year 11)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1235; "GM % Y11"; Decimal)
        {
            Caption = 'GM % (Year 11)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1241; "Unit Price Y12"; Decimal)
        {
            Caption = 'Unit Price (Year 12)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1242; "Amount Incl. WHT Y12"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 12)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1243; "Unit Price Incr. % Y12"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 12)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1244; "Unit Cost Y12"; Decimal)
        {
            Caption = 'Unit Cost (Year 12)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1245; "Cost of Material Y12"; Decimal)
        {
            Caption = 'Cost of Material (Year 12)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1246; "Cost Incr. % Y12"; Decimal)
        {
            Caption = 'Cost Increment % (Year 12)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1247; "Shipping Y12"; Decimal)
        {
            Caption = 'Shipping (Year 12)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1248; "Shipping Incr. % Y12"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 12)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1249; "Duty Y12"; Decimal)
        {
            Caption = 'Duty (Year 12)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1250; "Duty Incr. % Y12"; Decimal)
        {
            Caption = 'Duty Increment % (Year 12)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1251; "Total Shipping Y12"; Decimal)
        {
            Caption = 'Total Shipping (Year 12)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1252; "Cost per Unit Y12"; Decimal)
        {
            Caption = 'Cost per Unit (Year 12)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1253; "Total Cost Y12"; Decimal)
        {
            Caption = 'Total Cost (Year 12)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1254; "GM Y12"; Decimal)
        {
            Caption = 'GM (Year 12)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1255; "GM % Y12"; Decimal)
        {
            Caption = 'GM % (Year 12)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1261; "Unit Price Y13"; Decimal)
        {
            Caption = 'Unit Price (Year 13)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1262; "Amount Incl. WHT Y13"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 13)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1263; "Unit Price Incr. % Y13"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 13)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1264; "Unit Cost Y13"; Decimal)
        {
            Caption = 'Unit Cost (Year 13)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1265; "Cost of Material Y13"; Decimal)
        {
            Caption = 'Cost of Material (Year 13)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1266; "Cost Incr. % Y13"; Decimal)
        {
            Caption = 'Cost Increment % (Year 13)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1267; "Shipping Y13"; Decimal)
        {
            Caption = 'Shipping (Year 13)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1268; "Shipping Incr. % Y13"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 13)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1269; "Duty Y13"; Decimal)
        {
            Caption = 'Duty (Year 13)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1270; "Duty Incr. % Y13"; Decimal)
        {
            Caption = 'Duty Increment % (Year 13)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1271; "Total Shipping Y13"; Decimal)
        {
            Caption = 'Total Shipping (Year 13)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1272; "Cost per Unit Y13"; Decimal)
        {
            Caption = 'Cost per Unit (Year 13)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1273; "Total Cost Y13"; Decimal)
        {
            Caption = 'Total Cost (Year 13)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1274; "GM Y13"; Decimal)
        {
            Caption = 'GM (Year 13)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1275; "GM % Y13"; Decimal)
        {
            Caption = 'GM % (Year 13)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1281; "Unit Price Y14"; Decimal)
        {
            Caption = 'Unit Price (Year 14)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1282; "Amount Incl. WHT Y14"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 14)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1283; "Unit Price Incr. % Y14"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 14)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1284; "Unit Cost Y14"; Decimal)
        {
            Caption = 'Unit Cost (Year 14)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1285; "Cost of Material Y14"; Decimal)
        {
            Caption = 'Cost of Material (Year 14)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1286; "Cost Incr. % Y14"; Decimal)
        {
            Caption = 'Cost Increment % (Year 14)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1287; "Shipping Y14"; Decimal)
        {
            Caption = 'Shipping (Year 14)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1288; "Shipping Incr. % Y14"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 14)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1289; "Duty Y14"; Decimal)
        {
            Caption = 'Duty (Year 14)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1290; "Duty Incr. % Y14"; Decimal)
        {
            Caption = 'Duty Increment % (Year 14)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1291; "Total Shipping Y14"; Decimal)
        {
            Caption = 'Total Shipping (Year 14)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1292; "Cost per Unit Y14"; Decimal)
        {
            Caption = 'Cost per Unit (Year 14)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1293; "Total Cost Y14"; Decimal)
        {
            Caption = 'Total Cost (Year 14)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1294; "GM Y14"; Decimal)
        {
            Caption = 'GM (Year 14)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1295; "GM % Y14"; Decimal)
        {
            Caption = 'GM % (Year 14)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
        field(1301; "Unit Price Y15"; Decimal)
        {
            Caption = 'Unit Price (Year 15)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1302; "Amount Incl. WHT Y15"; Decimal)
        {
            Caption = 'Amount Incl. of WHT (Year 15)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1303; "Unit Price Incr. % Y15"; Decimal)
        {
            Caption = 'Unit Price Increment % (Year 15)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1304; "Unit Cost Y15"; Decimal)
        {
            Caption = 'Unit Cost (Year 15)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1305; "Cost of Material Y15"; Decimal)
        {
            Caption = 'Cost of Material (Year 15)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1306; "Cost Incr. % Y15"; Decimal)
        {
            Caption = 'Cost Increment % (Year 15)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1307; "Shipping Y15"; Decimal)
        {
            Caption = 'Shipping (Year 15)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1308; "Shipping Incr. % Y15"; Decimal)
        {
            Caption = 'Shipping Increment % (Year 15)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1309; "Duty Y15"; Decimal)
        {
            Caption = 'Duty (Year 15)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1310; "Duty Incr. % Y15"; Decimal)
        {
            Caption = 'Duty Increment % (Year 15)';
            DecimalPlaces = 0 : 5;

            trigger OnValidate()
            begin
                Recalculate();
            end;
        }
        field(1311; "Total Shipping Y15"; Decimal)
        {
            Caption = 'Total Shipping (Year 15)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1312; "Cost per Unit Y15"; Decimal)
        {
            Caption = 'Cost per Unit (Year 15)';
            AutoFormatType = 2;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1313; "Total Cost Y15"; Decimal)
        {
            Caption = 'Total Cost (Year 15)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1314; "GM Y15"; Decimal)
        {
            Caption = 'GM (Year 15)';
            AutoFormatType = 1;
            AutoFormatExpression = "Currency Code";
            Editable = false;
        }
        field(1315; "GM % Y15"; Decimal)
        {
            Caption = 'GM % (Year 15)';
            DecimalPlaces = 0 : 5;
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "RFQ No.", "Option Code", "Line Number")
        {
            Clustered = true;
        }
    }

    procedure YearFieldNo(Year: Integer; Measure: Integer): Integer
    begin
        // Measures: 1 Unit Price, 2 Amount Incl. WHT, 3 Unit Price Incr. %, 4 Unit Cost, 5 Cost of Material, 6 Cost Incr. %,
        // 7 Shipping, 8 Shipping Incr. %, 9 Duty, 10 Duty Incr. %, 11 Total Shipping, 12 Cost per Unit, 13 Total Cost, 14 GM, 15 GM %
        exit(1000 + Year * 20 + Measure);
    end;

    procedure GetValue(Year: Integer; Measure: Integer): Decimal
    var
        RecRef: RecordRef;
        Value: Decimal;
    begin
        RecRef.GetTable(Rec);
        Value := RecRef.Field(YearFieldNo(Year, Measure)).Value();
        exit(Value);
    end;

    procedure SetValue(Year: Integer; Measure: Integer; Value: Decimal)
    var
        RecRef: RecordRef;
        FldRef: FieldRef;
    begin
        RecRef.GetTable(Rec);
        FldRef := RecRef.Field(YearFieldNo(Year, Measure));
        FldRef.Value := Value;
        RecRef.SetTable(Rec);
    end;

    procedure InitYear1(WorksheetLine: Record "RFQ Comparision Worksheet Line")
    begin
        SetValue(1, 1, WorksheetLine."Unit Price Incl. WHT");
        SetValue(1, 4, WorksheetLine."Unit Cost");
        SetValue(1, 7, WorksheetLine.Shipping);
        SetValue(1, 9, WorksheetLine.Duties);
    end;

    procedure Recalculate()
    var
        Year: Integer;
        UnitPrice: Decimal;
        UnitCost: Decimal;
        ShippingAmt: Decimal;
        DutyAmt: Decimal;
        AmountInclWHT: Decimal;
        TotalCost: Decimal;
    begin
        for Year := 1 to 15 do begin
            if Year = 1 then begin
                UnitPrice := GetValue(1, 1);
                UnitCost := GetValue(1, 4);
                ShippingAmt := GetValue(1, 7);
                DutyAmt := GetValue(1, 9);
            end else
                if Year <= "Contract Period" then begin
                    UnitPrice := Round(UnitPrice * (100 + GetValue(Year, 3)) / 100, 0.00001);
                    UnitCost := Round(UnitCost * (100 + GetValue(Year, 6)) / 100, 0.00001);
                    ShippingAmt := Round(ShippingAmt * (100 + GetValue(Year, 8)) / 100, 0.00001);
                    DutyAmt := Round(DutyAmt * (100 + GetValue(Year, 10)) / 100, 0.00001);
                end else begin
                    UnitPrice := 0;
                    UnitCost := 0;
                    ShippingAmt := 0;
                    DutyAmt := 0;
                end;
            AmountInclWHT := UnitPrice * Quantity;
            TotalCost := (UnitCost + ShippingAmt + DutyAmt) * Quantity;
            SetValue(Year, 1, UnitPrice);
            SetValue(Year, 2, AmountInclWHT);
            SetValue(Year, 4, UnitCost);
            SetValue(Year, 5, UnitCost * Quantity);
            SetValue(Year, 7, ShippingAmt);
            SetValue(Year, 9, DutyAmt);
            SetValue(Year, 11, (ShippingAmt + DutyAmt) * Quantity);
            SetValue(Year, 12, UnitCost + ShippingAmt + DutyAmt);
            SetValue(Year, 13, TotalCost);
            SetValue(Year, 14, AmountInclWHT - TotalCost);
            if AmountInclWHT <> 0 then
                SetValue(Year, 15, Round((AmountInclWHT - TotalCost) / AmountInclWHT * 100, 0.01))
            else
                SetValue(Year, 15, 0);
        end;
    end;
}
