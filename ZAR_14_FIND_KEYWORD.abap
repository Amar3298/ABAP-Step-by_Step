REPORT ZAR_14_FIND_KEYWORD.
Data: lv_string TYPE String VALUE 'Dragon Ball'.
*Using find we will able to find the string but it is case sensative
FIND 'Dragon' IN lv_string.
if sy-subrc eq 0.
  WRITE: / 'Success'.
else.
  WRITE: / 'Something went Wrong'.
ENDIF.

*If we want to ignore the case sensativity we use ignore case
FIND 'dragon' IN lv_string IGNORING CASE.
if sy-subrc eq 0.
  WRITE: / 'Success without case sensativity'.
else.
  WRITE: / 'Something went Wrong'.
ENDIF.