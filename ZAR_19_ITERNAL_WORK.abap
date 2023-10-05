REPORT zar_19_iternal_work.
TABLES: zordh_28.
TYPES: BEGIN OF lty_data,"(local type – naming conventions)
         ono TYPE zdeono_28,
         pm  TYPE zdepm_28,
       END OF lty_data.
*Declaring internal table
DATA: lt_data TYPE TABLE OF lty_data.
*Work Area
*We can declare work are only using structure we cannot declare using table.
DATA: lwa_data TYPE lty_data.

*WHEN we use ',' while using fields it go into inline declaration so if we want to declare using structure we should not use ',' while declaraing fields in select querry 
SELECT ono
       pm
       FROM zordh_28
       INTO TABLE lt_data.
IF sy-subrc eq 0.
  WRITE 'Done'.
ELSE.
  WRITE 'Something went wrong'.
ENDIF.

loop at lt_data into lwa_data.
  write: lwa_data-ono.
  clear lwa_data.
ENDLOOP.