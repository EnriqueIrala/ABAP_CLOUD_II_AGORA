CLASS zcl_34_controller_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS:
      set_model IMPORTING io_model TYPE REF TO zcl_32_model_c326,
      get_model RETURNING VALUE(ro_model) TYPE REF TO zcl_32_model_c326,

      set_view IMPORTING io_view TYPE REF TO zcl_33_view_c326,
      get_view RETURNING VALUE(ro_view) TYPE REF TO zcl_33_view_c326.

  PROTECTED SECTION.
  PRIVATE SECTION.

    DATA: model TYPE REF TO zcl_32_model_c326,
          view  TYPE REF TO zcl_33_view_c326.

ENDCLASS.



CLASS zcl_34_controller_c326 IMPLEMENTATION.

  METHOD get_model.
    ro_model = me->model.
  ENDMETHOD.

  METHOD get_view.
    ro_view = me->view.
  ENDMETHOD.

  METHOD set_model.
    me->model = io_model.
  ENDMETHOD.

  METHOD set_view.
    me->view = io_view.
  ENDMETHOD.

ENDCLASS.
