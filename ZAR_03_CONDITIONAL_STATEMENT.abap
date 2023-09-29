REPORT ZAR_03_CONDITIONAL_STATEMENT.
Data: lv_con TYPE i VALUE 55.
*WRITE: lv_con.
IF lv_con eq 5.
  WRITE: / 'Its no 5'.
elseif lv_con eq 10.
  WRITE: / 'Its no 10'.
 else.
   WRITE: / 'Something Dfferent'.

ENDIF.