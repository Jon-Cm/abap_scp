@AbapCatalog.sqlViewName: 'ZV_REM_DAYSL2662'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Remaining Days'
define view z_b_rem_days_2662
  as select from zrent_cars_2662
{
  key matricula as matricula,
      marca     as marca,
      case
      when alq_hasta <> ''
      then dats_days_between( cast( $session.system_date as abap.dats ), alq_hasta)
      end       as dias
}
