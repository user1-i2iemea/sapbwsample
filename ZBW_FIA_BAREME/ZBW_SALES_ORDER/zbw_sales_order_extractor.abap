FUNCTION ZBW_SALES_ORDER_EXTRACTOR.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     VALUE(I_REQUNR) TYPE  SRSC_S_IF_SIMPLE-REQUNR
*"  TABLES
*"      E_T_DATA STRUCTURE ZS_SALES_ORDERS
*"----------------------------------------------------------------------
  SELECT VBELN, KUNNR, NETWR, ERDAT INTO TABLE E_T_DATA
    FROM VBAK
    WHERE AUART = 'OR'
      AND ERDAT >= SY-DATUM - 30.
ENDFUNCTION.
