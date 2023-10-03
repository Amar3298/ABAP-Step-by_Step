REPORT ZAR_09_CHECK_KEYWORD_IN_LOOP.
Data: lv_input TYPE i.
DO 10 TIMES.
    lv_input = lv_input + 1.
    CHECK lv_input = 5.
        WRITE: / 'We are in the Check statement scope' , lv_input.
ENDDO.
*Check :- if the check condition is not true loop will skip the current loop pass and move to the next loop pass 