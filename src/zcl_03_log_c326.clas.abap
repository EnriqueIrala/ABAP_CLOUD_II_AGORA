CLASS zcl_03_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CONSTANTS: c_logali TYPE c LENGTH 6 VALUE 'Logali',
               BEGIN OF cs_values,
                 c_v1 TYPE c LENGTH 2 VALUE 'V1',
                 c_v2 TYPE c LENGTH 2 VALUE 'V2',
                 c_v3 TYPE c LENGTH 2 VALUE 'V3',
               END OF cs_values.

    TYPES: BEGIN OF ty_travel,
             travel_id     TYPE /dmo/travel_id,
             agency_id     TYPE /dmo/agency_id,
             customer_id   TYPE /dmo/customer_id,
             total_price   TYPE /dmo/total_price,
             currency_code TYPE /dmo/currency_code,
           END OF ty_travel.

    DATA: company TYPE c LENGTH 9 VALUE 'FEMSA' READ-ONLY.

    METHODS:
      get_travel
        IMPORTING iv_travel_id     TYPE /dmo/travel_id OPTIONAL
        RETURNING VALUE(rs_travel) TYPE ty_travel.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_03_log_c326 IMPLEMENTATION.

  METHOD get_travel.

    company = 'Logali'.

    "    '00000006'
    IF iv_travel_id IS SUPPLIED.
      DATA(lv_travel_id) = iv_travel_id.
    ELSE.
      lv_travel_id = '00000001'.
    ENDIF.

    SELECT SINGLE travel_id,
                  agency_id,
                  customer_id,
                  total_price,
                  currency_code
             FROM /dmo/travel
            WHERE travel_id = @lv_travel_id
            INTO @rs_travel.



  ENDMETHOD.

ENDCLASS.
