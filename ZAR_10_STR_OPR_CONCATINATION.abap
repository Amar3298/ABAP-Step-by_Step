REPORT ZAR_10_STR_OPR_CONCATINATION.
Data: lv_input_a TYPE String value 'Welcome',
      lv_input_b TYPE String value 'to',
      lv_input_c TYPE String value ' Dragon Ball',
      lv_res TYPE String.
*CONCATENATE lv_input_a lv_input_b lv_input_c into lv_res.
CONCATENATE lv_input_a lv_input_b lv_input_c into lv_res SEPARATED BY ' '.
WRITE: / lv_res.