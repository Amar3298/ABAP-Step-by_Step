REPORT ZAR_26_SORT.
TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
       ono TYPE zdeono_28,
       pm TYPE zdepm_28,
       END OF it_struc.

Data: it_data TYPE TABLE OF it_struc,
      wa_data TYPE it_struc.

SELECT
    ono
    pm
    FROM zordh_28
    INTO TABLE it_data.
IF SY-SUBRC Eq 0.
    WRITE: 'Success'.
ELSE.
    WRITE: 'Something went wrong'.
ENDIF.

LOOP AT it_data INTO WA_DATA.
    WRITE: / wa_data-ono , wa_data-pm.
ENDLOOP.

*here we are not specifing so by default it will sort in assending order
SORT it_data BY ono.

*here we are sorting the ono column in descending order
SORT it_data BY ono descending.

*here we are first sorting and then subsorting so we need to specify after every column
SORT it_data BY ono descending pm descending.