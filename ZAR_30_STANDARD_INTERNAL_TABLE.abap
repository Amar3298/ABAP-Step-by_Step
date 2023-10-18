TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
       ono TYPE zordh_28,
       pm TYPE zdepm_28,
       END OF it_struc.

Here we have declared two internal table both means same if we dont specify what is the type of internal table it will consider 
default internal table only 
DATA: it_data TYPE TABLE OF it_struc,
      it_data1 TYPE STANDARD TABLE OF it_struc.

Data: wa_data TYPE it_struc.

wa_data-ono = 1.
wa_data-pm = 'D'
APPEND wa_data INTO it_data.
CLEAR wa_data.

wa_data-ono = 2.
wa_data-pm = 'N'
APPEND wa_data INTO it_data.
CLEAR wa_data.

wa_data-ono = 3.
wa_data-pm = 'C'
APPEND wa_data INTO it_data.
CLEAR wa_data.

LOOP AT it_data INTO wa_data.
    WRITE: / wa_data-ono , wa_data-pm.
ENDLOOP.