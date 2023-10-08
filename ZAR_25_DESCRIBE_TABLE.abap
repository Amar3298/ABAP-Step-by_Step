TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
       ono TYPE zdeono_28,
       pm TYPE zdepm_28,
       END OF it_struc.

Data: it_data TYPE TABLE OF it_struc,
      wa_data TYPE it_struc,
      lv_data TYPE I.

SELECT
    ono
    pm
    FROM zordh_28
    into TABLE it_data.
IF SY-SUBRC Eq 0.
    WRITE: 'Success'.
ELSE.
    WRITE: 'Something went Wrong'.
ENDIF.

DESCRIBE TABLE it_data LINES lv_data.