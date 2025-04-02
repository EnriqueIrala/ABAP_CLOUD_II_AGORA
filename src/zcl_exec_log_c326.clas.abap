CLASS zcl_exec_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES: if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_exec_log_c326 IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.
*    out->write( 'Hello again Agora' ).

**    data: lo_class type ref to zcl_02_log_c326.
**
**    CREATE OBJECT lo_class.
*
**    data(lo_class) = new zcl_02_log_c326( ).
**
**    lo_class->set_product( 'Product1' ).
**
***    lo_class->get_product(
***      IMPORTING
***        ev_product = data(lv_product) ).
***
***    out->write( lv_product ).
**
**   out->write( lo_class->get_product( ) ).
**
**    zcl_02_log_c326=>set_date( '20250304' ).
**
**    zcl_02_log_c326=>get_date(
**      IMPORTING
**        ev_date = data(lv_date) ).
**
**    out->write( lv_date ).
*
**    DATA(lo_class) = NEW zcl_03_log_c326( ).
**
***    out->write( zcl_03_log_c326=>c_logali ).
**
**    out->write( lo_class->company ).
**
***    lo_class->company = 'LOGALI'.
**
**    out->write( lo_class->company ).
**
***    out->write( lo_class->get_travel( '00000009' ) ).
*
**    out->write( zcl_04_log_c326=>log ).
**
**    data(lo_const) = new zcl_04_log_c326( ).
**
**    out->write( zcl_04_log_c326=>log ).
**
**    data(lo_const2) = new zcl_04_log_c326( ).
**
**    out->write( zcl_04_log_c326=>log ).
**
**    data(lo_const3) = new zcl_04_log_c326( ).
**
**    out->write( zcl_04_log_c326=>log ).
*
* Heritance
*   data(lo_heritance) = new zcl_06_lgl_c326( ).
*
*   lo_heritance->set_animal( 'herbivorous' ).
*
*   out->write( lo_heritance->get_animal( ) ).
*
*
*   data(lo_heritance2) = new zcl_07_log_c326( ).
*
*   data(lo_heritance3) = new zcl_05_log_c326( ).
*
** Instances encapsulate
*
*    DATA(lo_instance) = NEW zcl_10_log_c326( ).
*
** Interfaces
*   data(lo_interface) = new zcl_13_log_c326( ).
*
*   lo_interface->set_conn_id( '0001' ).
*
*   out->write( lo_interface->get_con_id( ) ).
*
*   lo_interface->zif_03_log_c326~get_airports(
*     EXPORTING
*       iv_airport_id = '0003'
*     RECEIVING
*       rs_airport    = data(ls_address) ).
*
** Polymorphism with clases
*
*    DATA: lt_airplanes   TYPE STANDARD TABLE OF REF TO zcl_16_log_c326,
*          lo_airplane    TYPE REF TO zcl_16_log_c326,
*          lo_cargo_plane TYPE REF TO zcl_17_log_c326,
*          lo_pass_plane  TYPE REF TO zcl_18_log_c326.
*
*    lo_cargo_plane = NEW #( ).
*    APPEND lo_cargo_plane TO lt_airplanes.
*
*    lo_pass_plane = NEW #( ).
*    APPEND lo_pass_plane TO lt_airplanes.
*
*    LOOP AT lt_airplanes INTO lo_airplane.
*      out->write( lo_airplane->airplane_type( ) ).
*    ENDLOOP.
*
** Polymorphism with interfaces
*
*    DATA: lt_companies  TYPE STANDARD TABLE OF REF TO zif_04_log_c326,
*          lo_company    TYPE REF TO zif_04_log_c326,
*          lo_comp_europ TYPE REF TO zcl_19_log_c326,
*          lo_comp_usa   TYPE REF TO zcl_20_log_c326,
*          lo_plant      TYPE REF TO zcl_21_log_c326.
*
*          lo_comp_europ = new #( ).
*          APPEND lo_comp_europ to lt_companies.
*
*          lo_comp_usa = new #( ).
*          APPEND lo_comp_usa to lt_companies.
*
*          lo_plant = new #( ).
*
*          LOOP AT lt_companies into lo_company.
*           out->write( lo_company->define_company( ) ).
*           out->write( lo_plant->assign_company( lo_company ) ).
*          ENDLOOP.
*
** Association
*
*    DATA(lo_credit_card) = NEW zcl_22_log_c326( ).
*    DATA(lo_client) = NEW zcl_23_log_c326( ).
*
*    lo_credit_card->set_card_num( '4444 5555 6666 7777' ).
*
*    lo_client->set_credit_card( lo_credit_card ).
*
*    out->write( lo_client->get_credit_card( )->get_card_num( ) ).
*
** Composition
*
*    DATA(lo_keyboard) = NEW zcl_24_log_c326( ).
*    DATA(lo_laptop) = NEW zcl_25_log_c326( lo_keyboard ).
*
*    lo_keyboard->keyboard_type = 'ES'.
*
*    out->write( lo_laptop->keyboard->keyboard_type ).
*
* Events
*    DATA(lo_timer) = NEW zcl_26_log_c326( ).
*    DATA(lo_conexion) = NEW zcl_27_log_c326( ).
*
*    SET HANDLER lo_conexion->on_time_out FOR lo_timer ACTIVATION abap_true.
*
*    DO.
*
*      WAIT UP TO 1 SECONDS.
*
*      lo_timer->increment_counter( 1 ).
*
*      IF lo_conexion->hour IS INITIAL.
*        out->write( |Event not yet executed: { cl_abap_context_info=>get_system_time( ) }| ).
*      ELSE.
*        out->write( |Event was raised at: { lo_conexion->hour }-{ lo_conexion->sender_user } | ).
*        SET HANDLER lo_conexion->on_time_out FOR lo_timer ACTIVATION abap_false.
*      ENDIF.
*
*      IF sy-tabix = 10.
*        EXIT.
*      ENDIF.
*
*    ENDDO.
*
** Exception
*    DATA: lx_auth TYPE REF TO zcx_29_auth_log_c326.
*
*    data: lv_result type i,
*          lv_num1 type i value 20,
*          lv_num2 type i.
*
*    DATA(lo_acess) = NEW zcl_30_manage_access_c326( ).
*
*    TRY.
**        lo_acess->check_user( sy-uname ).
*
*        lv_result = lv_num1 / lv_num2.
*
*      CATCH zcx_29_auth_log_c326 INTO lx_auth.
*        out->write( lx_auth->get_text( ) ).
*
*      CATCH cx_root into data(lx_root).
*       out->write( lx_root->get_text( ) ).
*
*      lv_num2 = 5.
*      RETRY.
*
*    ENDTRY.
*
*    out->write( lv_result ).

* Singleton

*  data: lo_singleton type ref to zcl_31_singleton_c326,
*        lo_singleton2 type ref to zcl_31_singleton_c326.
*
*        lo_singleton = zcl_31_singleton_c326=>get_instance( ).
*        lo_singleton2 = zcl_31_singleton_c326=>get_instance( ).

* Model View Controller
    DATA: lv_name TYPE string VALUE 'Juan López',
          lv_role TYPE string VALUE 'Sr Developer'.

    DATA(lo_model) = NEW zcl_32_model_c326(
      iv_name = lv_name
      iv_role = lv_role ).

    DATA(lo_view) = NEW zcl_33_view_c326( ).

    DATA(lo_controller) = NEW zcl_34_controller_c326( ).

    lo_controller->set_model( lo_model ).
    lo_controller->set_view( lo_view ).

    lo_controller->get_view( )->display_employee(
      iv_name = lo_model->get_name( )
      iv_role = lo_model->get_role( )
      io_out  = out ).
































  ENDMETHOD.

ENDCLASS.
