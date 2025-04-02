@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Association with parameters'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zcds_11_log_c326

  with parameters
    pCountryCode : land1

  as select from /dmo/travel as Travel

  association [1..1] to zcds_10_log_c326 as _Agency on _Agency.AgencyId = $projection.AgencyId
{

  key travel_id                                             as TravelId,
      Travel.agency_id                                      as AgencyId,
      _Agency( pCountryCode:$parameters.pCountryCode )[City = 'Chicago'].Name as AgencyName
}
