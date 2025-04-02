CLASS zcl_36_test_class_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC
  for TESTING
  DURATION SHORT
  RISK LEVEL HARMLESS.

  PUBLIC SECTION.


    METHODS:
     "! @testing zcl_35_factorial_c326
     factorial_test for testing. "UTM - Unit test method


  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS: setup,
             teardown.

    data: mo_cut type ref to zcl_35_factorial_c326. " CUT - Class Under test

ENDCLASS.



CLASS zcl_36_test_class_c326 IMPLEMENTATION.

  METHOD factorial_test.

    " Given
    DATA(lv_number_ut) = 4.
    DATA lv_factorial_ut TYPE i.

    " When
    mo_cut->get_factorial(
      EXPORTING
        iv_number    = lv_number_ut
      IMPORTING
        ev_factorial = lv_factorial_ut ).

    " Then
    cl_abap_unit_assert=>assert_equals(
      EXPORTING
        act                  = lv_factorial_ut
        exp                  = 24 ).

  ENDMETHOD.

  METHOD setup.
    mo_cut = new #(  ).
  ENDMETHOD.

  METHOD teardown.
    clear: mo_cut.
  ENDMETHOD.

ENDCLASS.
