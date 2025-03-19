CLASS zcl_21_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

   METHODS:
     assign_company IMPORTING io_company type REF TO zif_04_log_c326
                    RETURNING VALUE(rv_plant) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_21_log_c326 IMPLEMENTATION.

  METHOD assign_company.
    rv_plant = |PLant was assigned to... { io_company->define_company( ) }|.
  ENDMETHOD.

ENDCLASS.
