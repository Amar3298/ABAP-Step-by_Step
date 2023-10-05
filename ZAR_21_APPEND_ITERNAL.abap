REPORT zar_21_append_iternal.
TABLES: zordh_28.
TYPES: BEGIN OF it_cust,
         ono TYPE zdeono_28,
         pm  TYPE zdepm_28,
       END OF it_cust.

DATA: it_data TYPE TABLE OF it_cust,
      wa_data TYPE it_cust.

wa_data-ono = 1.
wa_data-pm = 'C'.
APPEND wa_data TO it_data.
CLEAR: wa_data.

wa_data-ono = 2.
wa_data-pm = 'D'.
APPEND wa_data TO it_data.
CLEAR: wa_data.

wa_data-ono = 3.
wa_data-pm = 'N'.
APPEND wa_data TO it_data.
CLEAR: wa_data.

*SELECT
*    ono
*    pm
*    FROM zordh_28
*    INTO TABLE it_data.
*IF sy-subrc EQ 0.
*  WRITE: 'Done'.
*ELSE.
*  WRITE: 'Something went wrong'.
*ENDIF.

LOOP AT it_data INTO wa_data.
  WRITE: / wa_data-ono , wa_data-pm , sy-tabix.
ENDLOOP.