@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Union'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_04_log_c326
  as select from /dmo/travel
{
  key travel_id                as TravelID,
      cast('' as abap.numc(4)) as BookingID

}

union 

select distinct from /dmo/booking
{
  key travel_id  as TravelID,
      booking_id as BookingID
}
