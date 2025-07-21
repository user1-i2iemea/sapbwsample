* Dynamic filtering by fiscal year
LOOP AT I_T_RANGE INTO DATA(ls_range).
  IF ls_range-FIELDNAME = 'FISCYEAR'.
    CLEAR ls_range-LOW.
    ls_range-LOW = CONV string( sy-datum+0(4) ).
    ls_range-HIGH = ls_range-LOW.
    ls_range-SIGN = 'I'.
    ls_range-OPT = 'EQ'.
    APPEND ls_range TO E_T_RANGE.
  ENDIF.
ENDLOOP.