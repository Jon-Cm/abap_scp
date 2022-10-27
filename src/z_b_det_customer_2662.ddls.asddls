@AbapCatalog.sqlViewName: 'ZV_DET_CUSTL2662'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Detail Customers'
@Metadata.allowExtensions: true
define view z_b_det_customer_2662
  as select from zrentcusts_2662
{
  key doc_id    as Id,
  key matricula as Matricula,
      nombres   as Nombre,
      apellidos as Apellidos,
      email     as correo,
      cntr_type as TipoContrato
}
