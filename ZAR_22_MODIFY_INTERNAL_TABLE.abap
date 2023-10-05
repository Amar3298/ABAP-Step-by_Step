REPORT zar_22_modify_internal_table.
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
      INTO TABLE it_data.
IF sy-subrc EQ 0.
  WRITE: 'Success'.
ELSE.
  WRITE: 'Something went wrong'.
ENDIF.

LOOP AT it_data INTO wa_data.
  IF wa_data-ono = 1.
    wa_data-pm = 'N'.
    MODIFY it_data FROM wa_data TRANSPORTING pm.
  ENDIF.
ENDLOOP.