REPORT zar_37_selection_par.
DATA: lv_ono TYPE zdeono_28.

*SELECT-OPTIONS: s_ono FOR lv_ono DEFAULT 1 TO 5.
*we will give the first value as low and after TO keyword as high
*For mandatory field.
*SELECT-OPTIONS: s_ono FOR lv_ono OBLIGATORY.
*For no multiple selection
*SELECT-OPTIONS: s_ono FOR lv_ono NO-EXTENSION.
*Only want low and no multiple selection
*SELECT-OPTIONS: s_ono FOR lv_ono NO INTERVALS NO-EXTENSION.
*Low and multiple selection button.
SELECT-OPTIONS: s_ono FOR lv_ono NO INTERVALS.