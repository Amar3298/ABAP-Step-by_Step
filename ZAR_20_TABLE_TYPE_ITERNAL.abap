REPORT zar_20_table_type_iternal.
TABLES: zordh_28.
*Declaring intenanl table using table type
DATA: lt_data TYPE ztstype_order.
TYPES: BEGIN OF lty_data,"(local type – naming conventions)
         ono TYPE zdeono_28,
         pm  TYPE zdepm_28,
       END OF lty_data.
DATA: lwa_data1 TYPE lty_data.

SELECT
      ono
      pm
      FROM zordh_28
      INTO TABLE lt_data.
IF sy-subrc EQ 0.
  WRITE 'Done'.
ELSE.
  WRITE 'Something went wrong'.
ENDIF.

loop at lt_data into lwa_data1.
  WRITE: / lwa_data1-ono.
ENDLOOP.