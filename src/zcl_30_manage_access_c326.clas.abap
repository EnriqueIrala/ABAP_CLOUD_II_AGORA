CLASS zcl_30_manage_access_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS:
      check_user IMPORTING iv_user TYPE syuname
                 RAISING   zcx_29_auth_log_c326.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_30_manage_access_c326 IMPLEMENTATION.

  METHOD check_user.

    IF sy-uname EQ 'CB9980000126'.

      RAISE EXCEPTION TYPE zcx_29_auth_log_c326
        EXPORTING
          textid = zcx_29_auth_log_c326=>no_auth
*         previous =
          msgv1  = |{ sy-uname }|
          msgv2  = 'Sales Orders'
*         msgv3  =
*         msgv4  =
        .

    ENDIF.

  ENDMETHOD.

ENDCLASS.
