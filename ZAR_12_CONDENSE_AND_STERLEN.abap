REPORT ZAR_12_CONDENSE_AND_STERLEN.
*CONDENSE:- It is to remove leading and trailing sapces and convert it to a single space
Data: lv_input1 TYPE String value '     Welcome     to     Dragon Ball',
      lv_input2 TYPE String value '     Welcome     to     Dragon Ball',
      lv_input1_length TYPE i,
      lv_input2_length TYPE i.

*it remove all the leading and trailing spaces and convert it to single space
CONDENSE lv_input1.

WRITE: / 'Removing the leading and trailing zeros and converting it into single space:- ' , lv_input1.

*if we want to remove all the spaces without a single space we use NO-GAPS
CONDENSE lv_input2 NO-GAPS.
WRITE: / 'Remove all the leading and trailing zeros without any spaces:- ' , lv_input2.
lv_input1_length = STRLEN( lv_input1 ).
lv_input2_length = STRLEN( lv_input2 ).
WRITE: / lv_input1_length , lv_input2_length.