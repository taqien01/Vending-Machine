import 'package:freezed_annotation/freezed_annotation.dart';

part 'vending_item.freezed.dart';

@freezed
class VendingItem with _$VendingItem {
  const factory VendingItem({
    required String? id,
    required String? name,
    required int? price,
    required int? stock,
  }) = _VendingItem;
}
