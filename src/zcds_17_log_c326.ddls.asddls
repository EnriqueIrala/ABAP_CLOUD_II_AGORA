@EndUserText.label: 'Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_QUERY_PROV_C326'
define custom entity zcds_17_log_c326

{
  key travel_id   : /dmo/travel_id;
      agency_id   : /dmo/agency_id;
      customer_id : /dmo/customer_id;
//      booking_id  : /dmo/booking_id;
}
