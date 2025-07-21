* End Routine - executed for each row
LOOP AT RESULT_PACKAGE INTO DATA(result_row).
  IF result_row-AMOUNT < 0.
    result_row-IS_NEGATIVE = 'X'.
  ELSE.
    result_row-IS_NEGATIVE = ''.
  ENDIF.
  MODIFY RESULT_PACKAGE FROM result_row.
ENDLOOP.