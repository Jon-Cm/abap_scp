@AbapCatalog.sqlViewName: 'ZV_RENTL_2662'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Renting'
@Metadata.allowExtensions: true
define view z_i_renting_2662
  as select from z_b_cars_2662 as Cars
  association [1]    to z_b_rem_days_2662     as _RemDays     on $projection.Matricula = _RemDays.matricula
  association [0..*] to z_b_brands_2662       as _Brands      on $projection.Marca = _Brands.Marca
  association [0..*] to z_b_det_customer_2662 as _DetCustomer on $projection.Matricula = _DetCustomer.Matricula
{

  key Cars.Matricula,
      Cars.Marca,
      Cars.Modelo,
      Cars.Color,
      Cars.Motor,
      Cars.Potencia,
      Cars.Unidad,
      Cars.Combustible,
      Cars.Consumo,
      Cars.FechaFabricacion,
      Cars.Puertas,
      Cars.Precio,
      Cars.Moneda,
      Cars.Alquilado,
      Cars.Desde,
      Cars.Hasta,
      case
      when _RemDays.dias <= 0 then 0
      when _RemDays.dias between 1 and 30 then 1
      when _RemDays.dias between 31 and 100 then 2
      when _RemDays.dias > 100 then 3
      else 0
      end as TiempoRenta,
      ''  as Estado,
      _Brands.imagen,
      _DetCustomer
}
