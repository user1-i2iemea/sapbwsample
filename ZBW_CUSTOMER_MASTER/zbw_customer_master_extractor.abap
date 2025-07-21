FUNCTION ZBW_CUSTOMER_MASTER_EXTRACTOR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_REQUNR) TYPE  SRSC_S_IF_SIMPLE-REQUNR
*"  TABLES
*"      E_T_DATA STRUCTURE ZS_CUSTOMERS
*"----------------------------------------------------------------------
  SELECT KUNNR, NAME1, LAND1, REGIO, ORT01 INTO TABLE E_T_DATA
    FROM KNA1
    WHERE LAND1 = 'US'.
ENDFUNCTION.
