CLASS zcl_08_log_c326 DEFINITION
  PUBLIC
*  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS:
     view_private.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_08_log_c326 IMPLEMENTATION.

  METHOD view_private.

     data(lo_friends) = new zcl_05_log_c326( ).

     lo_friends->color = 'White'.

  ENDMETHOD.

ENDCLASS.
