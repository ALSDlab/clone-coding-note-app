import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'order_type.freezed.dart';

@freezed
abstract class OrderType with _$OrderType {
  const factory OrderType.ascending() = Ascending;
  const factory OrderType.descending() = Descending;
}