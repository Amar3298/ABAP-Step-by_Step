REPORT ZAR_35_PARAMETERS.
PARAMETERS: p_ono TYPE ZDEONO_28.
PARAMETERS: p_r1 TYPE c RADIOBUTTON GROUP R1,
            p_r2 TYPE c RADIOBUTTON GROUP R1,
            p_r3 TYPE c RADIOBUTTON GROUP R1 DEFAULT 'X', "To select by default we need to use DEFAULT 'X'
            p_r4 TYPE c RADIOBUTTON GROUP R1.

PARAMETERS: p_chk1 AS CHECKBOX,
            p_chk2 AS CHECKBOX.

WRITE: 'Dragon Ball'.