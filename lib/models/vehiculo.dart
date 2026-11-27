/// Entidad de negocio inmutable que representa un vehículo.
///
/// Todos los campos son [final], por lo que una instancia no puede mutar una
/// vez creada. Las aserciones validan que el estado sea coherente durante el
/// desarrollo y las pruebas.
class Vehiculo {
  Vehiculo({
    required this.placa,
    required this.marca,
    required this.modelo,
    required this.anio,
  })  : assert(placa.isNotEmpty, 'La placa no puede estar vacía'),
        assert(marca.isNotEmpty, 'La marca no puede estar vacía'),
        assert(modelo.isNotEmpty, 'El modelo no puede estar vacío'),
        assert(anio >= 1900, 'El año debe ser mayor o igual a 1900');

  final String placa;
  final String marca;
  final String modelo;
  final int anio;

  @override
  String toString() =>
      'Vehiculo(placa: $placa, marca: $marca, modelo: $modelo, anio: $anio)';
}
