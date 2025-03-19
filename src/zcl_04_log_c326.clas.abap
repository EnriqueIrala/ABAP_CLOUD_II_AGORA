CLASS zcl_04_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-DATA: log TYPE string.

    METHODS:
      constructor IMPORTING data type string.

    CLASS-METHODS:
      class_constructor.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_04_log_c326 IMPLEMENTATION.

  METHOD class_constructor.
    log = |{ Log } Static Constructor--> |.
  ENDMETHOD.

  METHOD constructor.
    log = |{ Log } Instance Constructor--> |.
  ENDMETHOD.

ENDCLASS.
