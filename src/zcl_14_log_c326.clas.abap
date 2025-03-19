CLASS zcl_14_log_c326 DEFINITION ABSTRACT
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:

      merchandise_output
        RETURNING VALUE(rv_merchandise) TYPE string,

      production_line ABSTRACT
        RETURNING VALUE(rv_production) TYPE string,

      input_products ABSTRACT
        RETURNING VALUE(rv_input) TYPE string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_14_log_c326 IMPLEMENTATION.

  METHOD merchandise_output.

    rv_merchandise = 'Merchadise_out'.

  ENDMETHOD.

ENDCLASS.
