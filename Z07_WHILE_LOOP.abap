REPORT z07_while_loop.
*Do vs while loop :- do loop is called unconditional loop while loop is conditional loop
DATA: lv_input TYPE i.
WHILE lv_input LE 10.
  WRITE: / lv_input.
  lv_input = lv_input + 1.
ENDWHILE.