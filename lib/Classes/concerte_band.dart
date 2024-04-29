
import 'package:swift/Classes/band.dart';
import 'package:swift/Classes/band_decorator.dart';
import 'package:swift/Classes/sensor.dart';
class ConcreteBand extends BandDecorator {
  ConcreteBand(Band band) : super(band);

  @override
  void activateSensor(Sensor sensor) {
    super.activateSensor(sensor);
    print("ConcreteBand: Sensor activated");
  }

  @override
  void deactivateSensor(Sensor sensor) {
    super.deactivateSensor(sensor);
    print("ConcreteBand: Sensor deactivated");
  }
}
