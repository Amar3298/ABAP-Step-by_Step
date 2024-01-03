REPORT Z34_HASHED_INTERNAL_TABLE.
TYPES:
     BEGIN OF st_ordh,
       ono type ZDEONO_28,
       pm TYPE ZDEPM_28,
     END OF st_ordh.

DATA: lt_data TYPE HASHED TABLE OF st_ordh with UNIQUE key ono,
      wa_data TYPE st_ordh.