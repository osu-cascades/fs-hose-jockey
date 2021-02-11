import 'estimate.dart';

class Engagement {
  final int primaryKey;
  final int active;
  final String name;
  final String fireTimeStamp;
  final int size;
  final List<Estimate> orders;

  Engagement(this.name, this.fireTimeStamp, this.size, this.orders, this.active, [this.primaryKey]);

  @override
  String toString() {
    return '{ ${this.name}, ${this.fireTimeStamp}, ${this.size} }';
  }
}