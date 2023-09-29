REPORT ZAR_05_DO_LOOPS.
Data lv_input TYPE i.
DO 10 TIMES.
  lv_input = lv_input + 1.
  WRITE: / lv_input.
ENDDO.
*Do loop is called as a unconditional loop