@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Aggregations'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_05_log_c326
  as select from zcds_06_log_c326
{
//  key travel_id,
//      agency_id,

      min(TotalPrice)                        as MinTotalPrice,

      max( TotalPrice )                      as MaxTotalPrice,

      sum( TotalPrice )                      as SumTOtalPrice,

      count( distinct TotalPrice )           as CountDistinctTotalPrice,

      count(*)                               as CountAll,

      avg( TotalPrice as abap.dec( 16, 2 ) ) as AVGTotalPrice,

      currency_code                          as Currency
}
group by
//  travel_id,
//  agency_id,
  currency_code
