import 'dart:developer';
import 'dart:math' as math;

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../model/vending_item.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<_Started>(_onStarted);
    on<_Buy>(_onBuy);
  }

  Future<void> _onStarted(event, emit) async {
    try {
      log('message :: check');

      List<VendingItem> listItem = [
        VendingItem(
          id: "1",
          name: "Biskuit",
          price: 6000,
          stock: math.Random().nextInt(7) + 1,
        ),
        VendingItem(
          id: "2",
          name: "Chips",
          price: 8000,
          stock: math.Random().nextInt(7) + 1,
        ),
        VendingItem(
          id: "3",
          name: "Oreo",
          price: 10000,
          stock: math.Random().nextInt(7) + 1,
        ),
        VendingItem(
          id: "4",
          name: "Tango",
          price: 12000,
          stock: math.Random().nextInt(7) + 1,
        ),
        VendingItem(
          id: "5",
          name: "Cokelat",
          price: 15000,
          stock: math.Random().nextInt(7) + 1,
        ),
      ];
      log('message :: success');

      emit(
        state.copyWith(
          status: HomeStatus.success,
          list: listItem,
        ),
      );
    } catch (e) {
      log('message :: something wrong $e');
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> _onBuy(event, emit) async {
    emit(
      state.copyWith(
        status: HomeStatus.loading,
      ),
    );
    try {
      //
      List<VendingItem> list = List.from(state.list);

      var item = list[list.indexWhere((element) => element.id == event.id)];

      if (item.stock! == 0) {
        emit(
          state.copyWith(status: HomeStatus.failure, message: "Stock Habis"),
        );
      } else {
        if (event.balance <= item.price) {
          emit(
            state.copyWith(
              status: HomeStatus.failure,
              message: "Uang anda tidak mencukupi untuk membeli ${item.name}",
            ),
          );
        } else {
          var newItem = item.copyWith(stock: item.stock! - 1);
          log('message :: list bloc new item $newItem');

          list[list.indexWhere((element) => element.id == newItem.id)] =
              newItem;

          log('message :: list bloc $list');

          emit(
            state.copyWith(
                status: HomeStatus.success,
                list: list,
                message:
                    'Anda membeli ${item.name} dan kembalian anda ${event.balance - item.price}'),
          );
        }
      }
    } catch (e) {
      log('message :: wrong $e');
      emit(
        state.copyWith(
          status: HomeStatus.failure,
          message: e.toString(),
        ),
      );
    }
  }
}
