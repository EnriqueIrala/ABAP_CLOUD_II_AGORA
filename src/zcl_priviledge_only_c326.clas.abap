CLASS zcl_priviledge_only_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_priviledge_only_c326 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

*   AUTHORITY-CHECK OBJECT '/DMO/TRVL'
*   ID '/DMO/COUNTRY' FIELD lv_country_code
*   ID 'ACTVT' FIELD '01'.
*
*    IF sy-subrc = 0.

        SELECT FROM zcds_25_log_c326 WITH PRIVILEGED ACCESS
               FIELDS *
               INTO TABLE @DATA(lt_results)
               UP TO 50 ROWS.

        IF sy-subrc EQ 0.
          out->write( lt_results ).
        ELSE.
          out->write( 'No data' ).
        ENDIF.

*      ENDIF.

    ENDMETHOD.

ENDCLASS.
