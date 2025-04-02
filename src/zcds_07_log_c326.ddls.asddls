@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Amount Conversion'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_07_log_c326

  with parameters
    pFromCurrency : abap.cuky( 5 ),
    pToCurrency   : abap.cuky( 5 )

  as select from /dmo/travel
{
  key travel_id                                              as Travel_ID,

      @Semantics.amount.currencyCode: 'OriginalCurrency'
      total_price                                            as OriginalPrice,
      currency_code                                          as OriginalCurrency,

      @Semantics.amount.currencyCode: 'ConvertedCurrency'
      currency_conversion( amount => total_price,
                           source_currency => $parameters.pFromCurrency,
                           target_currency => $parameters.pToCurrency,
                           exchange_rate_date => $session.system_date,
                           client => $session.client,
                           error_handling => 'SET_TO_NULL' ) as Converted_Price,

      $parameters.pToCurrency                                as ConvertedCurrency


} where currency_code = $parameters.pFromCurrency
