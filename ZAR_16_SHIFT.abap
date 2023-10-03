REPORT ZAR_16_SHIFT.
*The Purpose of shift is to shift the content of a string
*Left Shift (Default)
*Right Shift
*Circular Shift
Data: lv_input1 TYPE String VALUE '0123456789',
      lv_input2 TYPE String VALUE '0123456789',
      lv_input3 TYPE String VALUE '0123456789'.
SHIFT lv_input1 by 5 PLACES.
SHIFT lv_input2 by 5 PLACES RIGHT.
SHIFT lv_input3 by 5 PLACES CIRCULAR.
WRITE: / lv_input1 , / lv_input2 , / lv_input3.