
import 'package:swift/Classes/value.dart';
class Data {
  int _id;
  DateTime _timestamp;
  List<Value> _values = [];

  Data(this._id, this._timestamp);

  void addValue(Value value) {
    _values.add(value);


  }
  void removeValue(Value value) {
    _values.remove(value);
  }


}