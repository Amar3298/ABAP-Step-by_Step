REPORT ZAR_15_TRANSLATE.
*Translate:- The purpose of translate is to convert string to uper case or lower case
Data: lv_input1 TYPE String value 'Dragon Ball',
      lv_input2 TYPE String VALUE 'dragon Ball'.

TRANSLATE lv_input2 TO UPPER CASE.
TRANSLATE lv_input1 TO LOWER CASE.
WRITE: / 'Coverting to Upper Case' , lv_input2.
WRITE: / 'Coverting to Lower Case' , lv_input1.

*TRANSLATE using specific pattern
DATA: lv_input_str TYPE String VALUE 'Dragon Ball',
      lv_pattern TYPE String VALUE 'DdBboO'.

WRITE: / 'Before Translating' , lv_input_str.
TRANSLATE lv_input_str USING lv_pattern.
WRITE: / 'After Translating' , lv_input_str.