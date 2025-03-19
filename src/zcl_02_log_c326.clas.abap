CLASS zcl_02_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

*    DATA: product TYPE string.
*    CLASS-DATA: date TYPE string.

    METHODS:
      set_product IMPORTING iv_product TYPE string,
*      get_product EXPORTING ev_product TYPE string.
      get_product RETURNING VALUE(rv_product) TYPE string.


    CLASS-METHODS:
      set_date IMPORTING iv_date TYPE string,
      get_date EXPORTING ev_date TYPE string.


  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: product TYPE string.
    CLASS-DATA: date TYPE string.


ENDCLASS.



CLASS zcl_02_log_c326 IMPLEMENTATION.

  METHOD get_date.
    ev_date = date.
  ENDMETHOD.

  METHOD get_product.
    rv_product = me->product.
  ENDMETHOD.

  METHOD set_date.
    date = iv_date.
  ENDMETHOD.

  METHOD set_product.
    me->product = iv_product.
  ENDMETHOD.

ENDCLASS.
