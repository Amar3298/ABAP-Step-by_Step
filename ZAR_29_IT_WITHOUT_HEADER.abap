REPORT ZAR_29_IT_WITHOUT_HEADER.
TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
       ono TYPE zdeono_28,
       pm TYPE zdepm_28,
       END OF it_struc.

*Here we are declaring internal table without header line so we need to declare seprate internal table and work area which is the prefered way
Data: it_data TYPE TABLE OF it_struc,
      wa_data TYPE it_struc.

SELECT
    ono
    pm
    FROM zordh_28
    INTO TABLE it_data.
IF SY-SUBRC Eq 0.
    WRITE: / 'Success'.
ELSE.
    WRITE: / 'Something went wrong'.
ENDIF.

LOOP AT it_data into wa_data.
    WRITE: / wa_data-ono , wa_data-pm.
ENDLOOP.