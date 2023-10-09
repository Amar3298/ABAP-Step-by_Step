REPORT ZAR_28_IT_HEADER_LINE.
TABLES: zordh_28.
TYPES: BEGIN OF it_struc,
       ono TYPE zdeono_28,
       pm TYPE zdepm_28,
       END OF it_struc.

*we are declaring internal table with header line so we dont need to declare the work area in this case
Data: it_data TYPE TABLE OF it_struc WITH HEADER LINE.

it_data-ono = '1'.
it_data-pm = 'C'.
*here we name of work area and internal table are same so we dont need to specify separately
APPEND it_data.
*here we have not use brackets [] so it is work area
CLEAR it_data.

it_data-ono = '2'.
it_data-pm = 'D'.
APPEND it_data.
CLEAR it_data.

it_data-ono = '3'.
it_data-pm = 'N'.
APPEND it_data.
CLEAR it_data.

*if we want to clear internal table we need to specify brackets
*CLEAR it_data[].

LOOP at it_data.
    WRITE: / it_data-ono , it_data-pm.
ENDLOOP.