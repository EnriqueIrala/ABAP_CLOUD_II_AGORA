CLASS zcl_27_log_c326 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    DATA: hour        TYPE zsyst_uzeit,
          sender_user TYPE string.

    METHODS:
      on_time_out FOR EVENT time_out OF zcl_26_log_c326
        IMPORTING ev_hour
                  sender.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_27_log_c326 IMPLEMENTATION.

  METHOD on_time_out.
    me->hour = ev_hour.
    me->sender_user = sender->user.
  ENDMETHOD.

ENDCLASS.
