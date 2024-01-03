REPORT Z32_SORTED_INTERNAL_TABLE.
TYPES:
    BEGIN OF st_ordh,
      ono type ZDEONO_28,
      PM type ZDEPM_28,
      ta TYPE ZDETA_28,
      curr TYPE ZDECUR_28,
    END OF st_ordh.

*here we are delaring the sorted internal table with ono as unique key means duplicate elements of ono is not allowed
*we can give multipe unique key means it will be combination ono pm e.g., 1 N (1 and Netbanking)
Data: lt_data type SORTED TABLE OF st_ordh with UNIQUE KEY ono.
*Data: lt_data type SORTED TABLE OF st_ordh with UNIQUE KEY ono pm. " Multiple unique keys
*here we are declaring the sorted internal table with non unique key that means quplicate entry is allwoed.
Data: lt_data1 type SORTED TABLE OF st_ordh with NON-UNIQUE KEY ono.

Data: wa_data TYPE st_ordh.

wa_data-ono = 1.
wa_data-pm = 'N'.
wa_data-ta = 300.
wa_data-curr = 'INR'.
INSERT wa_data INTO TABLE lt_data.
clear wa_data.

wa_data-ono = 2.
wa_data-pm = 'C'.
wa_data-ta = 305.
wa_data-curr = 'INR'.
INSERT wa_data INTO TABLE lt_data.
clear wa_data.

wa_data-ono = 5.
wa_data-pm = 'D'.
wa_data-ta = 310.
wa_data-curr = 'INR'.
INSERT wa_data INTO TABLE lt_data.
clear wa_data.

wa_data-ono = 3.
wa_data-pm = 'N'.
wa_data-ta = 320.
wa_data-curr = 'INR'.
INSERT wa_data INTO TABLE lt_data.
clear wa_data.

loop at lt_data into wa_data.
  WRITE: / wa_data-ono , wa_data-pm , wa_data-ta , wa_data-curr.
ENDLOOP.