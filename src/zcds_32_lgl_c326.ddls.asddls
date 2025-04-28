@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child interface'
@Metadata.ignorePropagatedAnnotations: false
define view entity zcds_32_lgl_c326
  as projection on zcds_30_log_c326
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      CarrierId,
      ConnectionId,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      /* Associations */
      _Customer,
      _Travel: redirected to parent zcds_31_lgl_c326
}
