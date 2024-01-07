REPORT ZAR_36_PARAMETERS_ASS.
" Requirement : - We will use two radio buttons 1. Order header tablr 2. Order Item table by clicking on it and clicking on execute we will get the data of that table
PARAMETERS: p_table1 TYPE C RADIOBUTTON GROUP R1,
            p_table2 TYPE C RADIOBUTTON GROUP R1.

TYPES:
    BEGIN OF st_ordh,
      ONO TYPE ZDEONO_28,
      PM TYPE ZDEPM_28,
      TA TYPE ZDETA_28,
      CURR TYPE ZDECUR_28,
    END OF st_ordh,

    BEGIN OF st_ordi,
      ONO TYPE ZDEONO_28,
      OIN TYPE ZDEOITEMO_28,
      ODESC TYPE ZDEODESC_28,
      ICOST TYPE ZDEOICOST_28,
    END OF st_ordi.

Data: lt_ordh TYPE TABLE OF st_ordh,
      lt_ordi TYPE TABLE OF st_ordi,
      wa_ordh TYPE st_ordh,
      wa_ordi TYPE st_ordi.

*main logic
if p_table1 = 'X'.
  PERFORM get_ordh.
  PERFORM display_ordh.
ELSEIF p_table2 = 'X'.
  PERFORM get_ordi.
  PERFORM display_ordi.
ELSE.
  WRITE: 'Something went wrong'.
ENDIF.

*PERFORM get_ordh.
*PERFORM get_ordi.
*PERFORM display_ordh.
*PERFORM display_ordi.
*&---------------------------------------------------------------------*
*& Form get_ordh
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_ordh .
 select
      ONO
      PM
      TA
      CURR
      FROM ZORDH_28
      INTO TABLE lt_ordh.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form get_ordi
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM get_ordi .
select
      ONO
      OIN
      ODESC
      ICOST
      FROM ZORDI_28
      INTO TABLE lt_ordi.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form display_ordh
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM display_ordh .
 WRITE: 'Order Number' , 'Payment Mode' , 'Total Amount' , 'Currency'.
loop at lt_ordh into wa_ordh.
  WRITE: / wa_ordh-ono , wa_ordh-pm , wa_ordh-ta , wa_ordh-curr.
ENDLOOP.
ENDFORM.
*&---------------------------------------------------------------------*
*& Form display_ordi
*&---------------------------------------------------------------------*
*& text
*&---------------------------------------------------------------------*
*& -->  p1        text
*& <--  p2        text
*&---------------------------------------------------------------------*
FORM display_ordi .
WRITE: 'Order Number' , 'Order Item Number' , 'Order Description' , 'Item Cost'.
loop at lt_ordi into wa_ordi.
  WRITE: / wa_ordi-ono , wa_ordi-oin , wa_ordi-odesc , wa_ordi-icost.
ENDLOOP.
ENDFORM.