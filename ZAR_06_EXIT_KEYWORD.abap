REPORT ZAR_06_EXIT_KEYWORD.
Data: lv_input TYPE i VALUE 5.
DO.
  WRITE: / 'The output is ' , lv_input.
  lv_input = lv_input + 1.
  if lv_input eq 10.
    exit.
   ENDIF.

ENDDO.