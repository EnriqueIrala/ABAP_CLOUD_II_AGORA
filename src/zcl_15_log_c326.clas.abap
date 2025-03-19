CLASS zcl_15_log_c326 DEFINITION
  PUBLIC
  INHERITING FROM zcl_14_log_c326
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: production_line REDEFINITION,
             input_products REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_15_log_c326 IMPLEMENTATION.

  METHOD input_products.

    rv_input = 'Input Products'.

  ENDMETHOD.

  METHOD production_line.

    rv_production = 'Production line'.

  ENDMETHOD.

ENDCLASS.
