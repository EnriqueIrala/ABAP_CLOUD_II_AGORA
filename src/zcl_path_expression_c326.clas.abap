CLASS zcl_path_expression_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_path_expression_c326 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

    SELECT FROM zcds_16_log_c326 AS Booking
    FIELDS booking~TravelId,
           booking~BookingId,
           \_Travel-AgencyId,
           \_Travel\_Agency-name AS AgencyName,
           \_Travel\_Customer-customer_id AS CustomerId,
           concat_with_space( \_Travel\_Customer-first_name, \_Travel\_Customer-last_name, 1 ) AS CustomerName
     WHERE booking~CarrierId = 'AA'
       AND \_Travel-TravelId = '00000004'
     INTO TABLE @DATA(lt_results)
     UP TO 10 ROWS.

    IF sy-subrc = 0.
      out->write( lt_results ).
    ENDIF.


  ENDMETHOD.

ENDCLASS.
