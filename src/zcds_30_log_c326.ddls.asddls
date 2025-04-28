@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association to Parent'
@Metadata.ignorePropagatedAnnotations: true
define view entity zcds_30_log_c326
  as select from /dmo/booking
  association to parent zcds_29_log_c326 as _Travel on _Travel.TravelId = $projection.TravelId
  
  association [1..1] to /DMO/I_Customer as _Customer on _Customer.CustomerID = $projection.CustomerId
{
  key travel_id     as TravelId,
  key booking_id    as BookingId,
      booking_date  as BookingDate,
      customer_id   as CustomerId,
      carrier_id    as CarrierId,
      connection_id as ConnectionId,
      flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price  as FlightPrice,
      currency_code as CurrencyCode,
      _Travel, // Make association public
      _Customer
}
