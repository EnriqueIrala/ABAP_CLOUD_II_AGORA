CLASS zcl_09_log_c326 DEFINITION
  PUBLIC
  INHERITING FROM zcl_08_log_c326
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      view_privateII.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_09_log_c326 IMPLEMENTATION.

  METHOD view_privateII.

    data(lo_friends) = new zcl_05_log_c326( ).

    lo_friends->color = 'Red'.

  ENDMETHOD.

ENDCLASS.
