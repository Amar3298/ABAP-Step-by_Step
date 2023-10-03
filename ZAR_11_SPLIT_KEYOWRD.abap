REPORT ZAR_11_SPLIT_KEYOWRD.
Data: lv_input_str TYPE String value 'A/B/C',
      lv_input_a TYPE String,
      lv_input_b TYPE String,
      lv_input_c TYPE String.
WRITE: 'Before Spliting' , lv_input_str.
SPLIT lv_input_str AT '/' into lv_input_a lv_input_b lv_input_c.
WRITE: / 'After Spliting' , / lv_input_a , / lv_input_b , / lv_input_c.