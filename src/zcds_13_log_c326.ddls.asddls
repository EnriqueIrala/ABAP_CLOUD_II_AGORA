@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with multiple fields'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_13_log_c326
  as select from /dmo/travel as travel

//  association [1..1] to I_CurrencyText as _Currency on  _Currency.Currency = $projection.CurrencyCode
//                                                    and _Currency.Language = $session.system_language

association [0..*] to I_CurrencyText as _Currency on  _Currency.Currency = $projection.CurrencyCode
                                                    
{

  key travel_id     as TravelId,
      agency_id     as AgencyId,
      customer_id   as CustomerId,
      begin_date    as BeginDate,
      end_date      as EndDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      booking_fee   as BookingFee,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      total_price   as TotalPrice,
      currency_code as CurrencyCode,
      _Currency[ 1:Language = $session.system_language ].CurrencyName
}
