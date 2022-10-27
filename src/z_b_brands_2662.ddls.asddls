@AbapCatalog.sqlViewName: 'ZV_BRANDSL_2662'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Brands'
define view z_b_brands_2662
  as select from zrent_brands2662
{
  key marca as Marca,
      @UI.hidden: true
      url   as imagen
}
