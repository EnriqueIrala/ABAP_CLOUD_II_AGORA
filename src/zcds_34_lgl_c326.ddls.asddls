@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Child query'
@Metadata.ignorePropagatedAnnotations: false
define view entity zcds_34_lgl_c326 as projection on zcds_30_log_c326
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
    _Travel : redirected to parent zcds_33_lgl_c326
}
