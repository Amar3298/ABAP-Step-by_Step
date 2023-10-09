REPORT ZAR_27_COLLECT.
TYPES: BEGIN OF it_struc,
       cname TYPE String,
       dept TYPE String,
       Amount TYPE ZDETA_28,
       END OF it_struc.

DATA: it_data TYPE TABLE OF it_struc,
      wa_data TYPE it_struc,
      it_temp_data TYPE TABLE OF it_struc.

WA_DATA-cname = 'ABC'.
WA_DATA-dept = 'ADMIN'.
WA_DATA-Amount = '10000.00'.
APPEND WA_DATA TO it_data.
CLEAR WA_DATA.

WA_DATA-cname = 'ABC'.
WA_DATA-dept = 'HR'.
WA_DATA-Amount = '20000.00'.
APPEND WA_DATA TO it_data.
CLEAR WA_DATA.

WA_DATA-cname = 'ABC'.
WA_DATA-dept = 'ADMIN'.
WA_DATA-Amount = '50000.00'.
APPEND WA_DATA TO it_data.
CLEAR WA_DATA.

WA_DATA-cname = 'ABC'.
WA_DATA-dept = 'TRAINING'.
WA_DATA-Amount = '10000.00'.
APPEND WA_DATA TO it_data.
CLEAR WA_DATA.

WA_DATA-cname = 'ABC'.
WA_DATA-dept = 'HR'.
WA_DATA-Amount = '20000.00'.
APPEND WA_DATA TO it_data.
CLEAR WA_DATA.

*here make sure that after collect we should not store it in same internal table or else it will become endless loop
LOOP AT it_data into wa_data.
    COLLECT wa_data into it_temp_data.
ENDLOOP.

LOOP AT it_temp_data into wa_data.
    WRITE: / wa_data-cname , wa_data-dept , wa_data-Amount.
ENDLOOP.