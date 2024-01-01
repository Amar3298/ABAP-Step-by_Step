REPORT zar_02_sum_of_no.
DATA: lv_num1(15) TYPE n VALUE 5,
      lv_num2(15) TYPE n VALUE 10,
      lv_res(20)  TYPE n.
lv_res = lv_num1 + lv_num2. 
WRITE: lv_res.
" : is chanin operator when we want to write different string using , in wirte statement
" for new line character we use
WRITE: / lv_num1.