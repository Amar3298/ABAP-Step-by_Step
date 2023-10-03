REPORT ZAR_17_SHIFT_VALUES.
*Trailing Zero's
Data: lv_input1(10) TYPE C VALUE '7000000000',
*Leading Zero's
      lv_input2(10) TYPE C VALUE '0000000007'.

SHIFT lv_input1 RIGHT DELETING TRAILING '0'.
SHIFT lv_input2 LEFT DELETING LEADING '0'.
WRITE: / 'After Removing Trailing Zeros' , lv_input1.
WRITE: / 'After Removing Leading Zeros' , lv_input2.

*we will remove the white spaces using condens
CONDENSE lv_input1.
CONDENSE lv_input2.
WRITE: / 'After Removing Trailing Zeros in Condense Form' , lv_input1.
WRITE: / 'After Removing Leading Zeros in Condesne Formx`' , lv_input2.