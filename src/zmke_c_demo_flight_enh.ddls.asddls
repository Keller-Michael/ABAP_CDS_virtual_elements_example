@EndUserText.label: 'demo flights with virtual elements'
@AccessControl.authorizationCheck: #NOT_REQUIRED
@Metadata.allowExtensions: true
define root view entity ZMKE_C_DEMO_FLIGHT_ENH
  provider contract transactional_query
  as projection on ZMKE_I_DEMO_FLIGHT as Flights
{
  key     CarrierId,
  key     ConnectionId,
  key     FlightDate,
          price,
          CurrencyCode,
          PlaneTypeId,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MKE_VIRTUAL_ELEMENTS'
  virtual PlaneTypeManufacturer : abap.sstring( 255 ),
          SeatsMax,
          SeatsOccupied,
          @ObjectModel.virtualElementCalculatedBy: 'ABAP:ZCL_MKE_VIRTUAL_ELEMENTS'
  virtual SeatsAvailable        : abap.int2
}
