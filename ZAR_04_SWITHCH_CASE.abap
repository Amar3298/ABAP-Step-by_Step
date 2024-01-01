REPORT zar_04_swithch_case.
DATA: lv_con TYPE i VALUE 5.
CASE lv_con.
  WHEN 1.
    WRITE: 'Its no 1'.
  WHEN 2.
    WRITE: 'Its no 2'.
  WHEN 3.
    WRITE: 'Ita no 3'.
  WHEN OTHERS.
    WRITE: 'Something went Wrong'.
ENDCASE.
" case is more efficeint than if 
*when we want to print it on new line use /
WRITE: / 'Dragon Ball'.