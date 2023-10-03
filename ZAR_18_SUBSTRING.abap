REPORT ZAR_18_SUBSTRING.
Data: lv_input_str TYPE String value 'DragonBall',
      lv_input_a TYPE String,
      lv_input_b TYPE String,
      lv_input_c TYPE String.
*Postion start from 0
lv_input_a = lv_input_str+0(3). " from 0th Index 3 letters or 3 position
lv_input_b = lv_input_str+3(3). " from 3rd postion 3 letters or 3 postion
lv_input_c = lv_input_str+6(4). " from 6th postion 4 letters or 4 postion
WRITE: / lv_input_a , / lv_input_b , / lv_input_c.