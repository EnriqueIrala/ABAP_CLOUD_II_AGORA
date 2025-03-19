CLASS zcl_13_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES:
      zif_01_log_c326,
      zif_02_log_c346.

    ALIASES:
       set_conn_id FOR zif_01_log_c326~set_conn_id,
       get_con_id FOR zif_01_log_c326~get_con_id,
       get_customer FOR zif_02_log_c346~get_customer.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_13_log_c326 IMPLEMENTATION.


  METHOD set_conn_id.
    me->zif_01_log_c326~conn_id = iv_conn_id.
  ENDMETHOD.

  METHOD get_con_id.
    rv_conn_id = me->zif_01_log_c326~conn_id.
  ENDMETHOD.

  METHOD get_customer.

    rs_cust_address = VALUE #( first_name = 'Enrique'
                               last_name = 'Lopez' ).

  ENDMETHOD.

  METHOD zif_03_log_c326~get_airports.

  ENDMETHOD.

ENDCLASS.
