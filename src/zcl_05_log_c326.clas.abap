CLASS zcl_05_log_c326 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC
  GLOBAL FRIENDS zcl_08_log_c326.

  PUBLIC SECTION.

    DATA: animal_type TYPE string.

    METHODS:

      constructor,

      set_animal IMPORTING iv_type TYPE string,
      get_animal RETURNING VALUE(rv_type) TYPE string,
*      set_size FINAL IMPORTING iv_size type string.
      set_size IMPORTING iv_size type string.

  PROTECTED SECTION.

    DATA: size TYPE string.

  PRIVATE SECTION.

    DATA: color TYPE string.

ENDCLASS.



CLASS zcl_05_log_c326 IMPLEMENTATION.

  METHOD get_animal.
    rv_type = me->animal_type.
  ENDMETHOD.

  METHOD set_animal.
    me->animal_type = iv_type.
  ENDMETHOD.

  METHOD constructor.

    size = 'Default'.

  ENDMETHOD.

  METHOD set_size.

    me->size = iv_size.

  ENDMETHOD.

ENDCLASS.
