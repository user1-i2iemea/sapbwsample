* Start Routine - executed once per data package
LOOP AT SOURCE_PACKAGE INTO DATA(source_row).
  IF source_row-ZFIELD IS INITIAL.
    DELETE SOURCE_PACKAGE WHERE ZFIELD IS INITIAL.
  ENDIF.
ENDLOOP.