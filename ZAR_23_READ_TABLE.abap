REPORT zar_23_read_table.
TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
         ono TYPE zdeono_28,
         pm  TYPE zdepm_28,
       END OF it_struc.
DATA: it_data TYPE TABLE OF it_struc,
      wa_data TYPE it_struc.
SELECT
      ono
      pm
      FROM zordh_28
      into TABLE it_data.
if sy-subrc Eq 0.
  WRITE: / 'Success'.
ELSE.
  WRITE: / 'Something went wrong'.
ENDIF.
*we can get single value using Read table so we can use either using loop or for single value using where condtion or using index
*we can use it for only iternal table 'with key' key word after that where condtion
*READ TABLE it_data INTO wa_data with KEY  ono = 4.
READ TABLE it_data INTO wa_data INDEX 3.
IF sy-subrc EQ 0.
  WRITE: / 'Success' , wa_data-ono , wa_data-pm.
ELSE.
  WRITE: / 'Something went wrong'.
ENDIF.