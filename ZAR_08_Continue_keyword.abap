REPORT ZAR_08_CONTINUE_KEYWORD.

Data: lv_input TYPE i.
WHILE lv_input < 15.
    lv_input = lv_input + 1.
    IF lv_input = 5.
        CONTINUE.
    ELSEIF lv_input = 10.
        CONTINUE.
    ELSE.
        WRITE: / lv_input.
    ENDIF.
ENDWHILE.

*CONTINUE:- Skip the current processing of the record and the process to next record in the loop statement