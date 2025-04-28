CLASS zcl_amdp_tf_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES: if_amdp_marker_hdb.

    CLASS-METHODS get_cust_bookings FOR TABLE FUNCTION ztf_01_log_c326.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_amdp_tf_c326 IMPLEMENTATION.

  METHOD get_cust_bookings BY DATABASE FUNCTION FOR HDB
                           LANGUAGE SQLSCRIPT
                           OPTIONS READ-ONLY
                           USING /dmo/booking /dmo/customer.
    RETURN select b.client,
                  b.travel_id as TravelId,
                  b.booking_id,
                  c.customer_id,
                  c.first_name,
                  c.last_name,
                  b.booking_date,
                  b.carrier_id,
                  b.connection_id,
                  b.flight_date,
                  b.flight_price,
                  b.currency_code
                  from "/DMO/BOOKING" as b
                  inner join "/DMO/CUSTOMER" as c
                             on -- b.client      = c.client
                             -- and
                             b.customer_id = c.customer_id
                  where c.client = :pClient
                     and
                       c.country_code = :pCountryCode
                  order by b.booking_date desc;
  endmethod.

ENDCLASS.
