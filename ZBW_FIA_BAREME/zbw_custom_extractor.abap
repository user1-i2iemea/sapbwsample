FUNCTION ZBW_CUSTOM_EXTRACTOR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_REQUNR) TYPE  SRSC_S_IF_SIMPLE-REQUNR
*"  TABLES
*"      E_T_DATA STRUCTURE ZS_BAREME
*"----------------------------------------------------------------------
  SELECT * FROM ZBAREME INTO TABLE E_T_DATA
    WHERE VALID_FROM <= SY-DATUM
      AND VALID_TO   >= SY-DATUM.
ENDFUNCTION.