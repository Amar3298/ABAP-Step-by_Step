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
    into TABLE it_data.
IF sy-subrc Eq 0.
    WRITE: / 'Success'.
else.
    WRITE: / 'Something went Wrong'.
ENDIF.

WRITE: / 'Before using the clear or refresh'.
loop at it_data into wa_data.
    WRITE: / wa_data-ono , wa_data-pm.
endloop.
while refreshing or clearing data from iternal table or work are we can use the both keyword clear as well as refresh 
but in case of work Area we need to use clear only we cannot use referesh for work area 
CLEAR it_data.
REFRESH it_data.
WRITE: / 'After using the clear or refresh'.
loop at it_data into wa_data.
    WRITE: / wa_data-ono , wa_data-pm.
endloop.
