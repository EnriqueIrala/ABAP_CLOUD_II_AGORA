@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS consuming TF'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_35_lgl_c326
  with parameters
    pCountryCode : land1

  as select from /dmo/travel as Travel
  
  association [0..*] to ztf_01_log_c326 as _BookingsbyCustomer on _BookingsbyCustomer.TravelId = Travel.travel_id
{
     key Travel.travel_id               as TravelId,
      Travel.agency_id               as AgencyId,
      _BookingsbyCustomer(pCountryCode: $parameters.pCountryCode,
                          pClient: $session.client ).customer_id as CustomerId,
      Travel.begin_date              as BeginDate,
      Travel.end_date                as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.booking_fee             as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Travel.total_price             as TotalPrice,
      Travel.currency_code           as CurrencyCode,
      Travel.description             as Description,
      Travel.status                  as Status,
      _BookingsbyCustomer(pCountryCode: $parameters.pCountryCode,
                          pClient: $session.client ).last_name   as LastName
  }
