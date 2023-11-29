TYPES: BEGIN OF lt_data,
        ono TYPE zdeono_28,
        pm TYPE zdepm_28,
       END of lt_data.

" By default we consider it as standard internal table 
Data: it_data TYPE TABLE OF lt_data,
      it_data1 TYPE standard TABLE OF lt_data.

Data: wa_data TYPE lt_data.

wa_data-ono = '1'.
wa_data-pm = 'C'.
APPEND wa_data to it_data.
Clear wa_data.

wa_data-ono = '2'.
wa_data-pm = 'D'.
APPEND wa_data to it_data.
Clear wa_data.

wa_data-ono = '3'.
wa_data-pm = 'C'.
APPEND wa_data to it_data.
Clear wa_data.

loop lt_data into wa_data.
    WRITE: / wa_data-ono , wa_data-pm.
ENDLOOP.