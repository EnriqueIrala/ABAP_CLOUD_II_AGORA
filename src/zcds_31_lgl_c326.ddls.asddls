@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection - Contract type Interface'
@Metadata.ignorePropagatedAnnotations: false
define root view entity zcds_31_lgl_c326 

provider contract transactional_interface

as projection on zcds_29_log_c326
 
{
    key TravelId,
    AgencyId,
    CustomerId,
    BeginDate,
    EndDate,
    BookingFee,
    TotalPrice,
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    _Agency,
    _Booking: redirected to composition child zcds_32_lgl_c326,
    _Customer
}
