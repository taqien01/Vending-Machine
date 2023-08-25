// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vending_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VendingItem {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get price => throw _privateConstructorUsedError;
  int? get stock => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VendingItemCopyWith<VendingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VendingItemCopyWith<$Res> {
  factory $VendingItemCopyWith(
          VendingItem value, $Res Function(VendingItem) then) =
      _$VendingItemCopyWithImpl<$Res, VendingItem>;
  @useResult
  $Res call({String? id, String? name, int? price, int? stock});
}

/// @nodoc
class _$VendingItemCopyWithImpl<$Res, $Val extends VendingItem>
    implements $VendingItemCopyWith<$Res> {
  _$VendingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VendingItemCopyWith<$Res>
    implements $VendingItemCopyWith<$Res> {
  factory _$$_VendingItemCopyWith(
          _$_VendingItem value, $Res Function(_$_VendingItem) then) =
      __$$_VendingItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name, int? price, int? stock});
}

/// @nodoc
class __$$_VendingItemCopyWithImpl<$Res>
    extends _$VendingItemCopyWithImpl<$Res, _$_VendingItem>
    implements _$$_VendingItemCopyWith<$Res> {
  __$$_VendingItemCopyWithImpl(
      _$_VendingItem _value, $Res Function(_$_VendingItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? price = freezed,
    Object? stock = freezed,
  }) {
    return _then(_$_VendingItem(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_VendingItem implements _VendingItem {
  const _$_VendingItem(
      {required this.id,
      required this.name,
      required this.price,
      required this.stock});

  @override
  final String? id;
  @override
  final String? name;
  @override
  final int? price;
  @override
  final int? stock;

  @override
  String toString() {
    return 'VendingItem(id: $id, name: $name, price: $price, stock: $stock)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VendingItem &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, price, stock);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VendingItemCopyWith<_$_VendingItem> get copyWith =>
      __$$_VendingItemCopyWithImpl<_$_VendingItem>(this, _$identity);
}

abstract class _VendingItem implements VendingItem {
  const factory _VendingItem(
      {required final String? id,
      required final String? name,
      required final int? price,
      required final int? stock}) = _$_VendingItem;

  @override
  String? get id;
  @override
  String? get name;
  @override
  int? get price;
  @override
  int? get stock;
  @override
  @JsonKey(ignore: true)
  _$$_VendingItemCopyWith<_$_VendingItem> get copyWith =>
      throw _privateConstructorUsedError;
}
