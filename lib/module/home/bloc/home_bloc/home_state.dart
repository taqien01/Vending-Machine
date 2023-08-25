part of 'home_bloc.dart';

enum HomeStatus {
  initial,
  loading,
  failure,
  success,
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(HomeStatus.initial) HomeStatus status,
    @Default([]) List<VendingItem> list,
    @Default('Something Wrong') String message,
  }) = Initial;
}
