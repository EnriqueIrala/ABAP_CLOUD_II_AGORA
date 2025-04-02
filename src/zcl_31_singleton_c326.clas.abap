CLASS zcl_31_singleton_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE .

  PUBLIC SECTION.

    CLASS-METHODS:
      get_instance
        RETURNING VALUE(ro_instance) TYPE REF TO zcl_31_singleton_c326.

  PROTECTED SECTION.
  PRIVATE SECTION.

    CLASS-DATA: mo_instance TYPE REF TO zcl_31_singleton_c326.

ENDCLASS.



CLASS zcl_31_singleton_c326 IMPLEMENTATION.

  METHOD get_instance.

    IF mo_instance IS NOT BOUND.
      mo_instance = NEW #( ).
    ENDIF.

    ro_instance = mo_instance.

  ENDMETHOD.

ENDCLASS.
