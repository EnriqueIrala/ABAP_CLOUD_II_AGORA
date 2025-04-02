*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations

TYPES: BEGIN OF ty_first,
         comp1 TYPE string,
         comp3 TYPE string,
         comp2 TYPE string,
       END OF ty_first.

CLASS lcl_helper DEFINITION.

  PUBLIC SECTION.

    DATA: ms_first TYPE ty_first.

    METHODS: get_first RETURNING VALUE(rs_first) TYPE ty_first.

ENDCLASS.


CLASS lcl_helper IMPLEMENTATION.

  METHOD get_first.

  ENDMETHOD.

ENDCLASS.
