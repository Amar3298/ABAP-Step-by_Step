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
Data: lt_data type SORTED TABLE OF st_ordh with UNIQUE KEY ono pm. " Multiple unique keys
*here we are declaring the sorted internal table with non unique key that means quplicate entry is allwoed.
Data: lt_data1 type SORTED TABLE OF st_ordh with NON-UNIQUE KEY ono.