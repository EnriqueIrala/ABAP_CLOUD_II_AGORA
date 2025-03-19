CLASS zcl_06_lgl_c326 DEFINITION INHERITING FROM zcl_05_log_c326
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      constructor,
      set_size REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_06_lgl_c326 IMPLEMENTATION.

  METHOD set_size.

    size = 'Taller'.

    IF me->size = 'Default'.

      super->set_size( 'Tall' ).

    ENDIF.

  ENDMETHOD.

  METHOD constructor.

    super->constructor( ).

    size = 'small'.

  ENDMETHOD.

ENDCLASS.
