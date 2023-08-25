import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vending_machine/model/vending_item.dart';
import 'package:vending_machine/module/home/bloc/home_bloc/home_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<VendingItem> list = [];
  String messageError = '';

  int saldo = 0;

  List<int> listSaldo = [
    2000,
    5000,
    10000,
    20000,
    50000,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vending Machine'),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        // buildWhen: (previous, current) => previous.status != current.status,
        listener: (context, state) {
          if (state.status == HomeStatus.failure) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(SnackBar(
                content: Text(state.message),
              ));
          } else if (state.status == HomeStatus.success) {
            ScaffoldMessenger.of(context)
              ..clearSnackBars()
              ..showSnackBar(SnackBar(
                content: Text(state.message),
              ));
            setState(() {
              saldo = 0;
            });
          }
        },
        builder: (context, state) {
          if (state.status == HomeStatus.initial) {
            context.read<HomeBloc>().add(const HomeEvent.started());
            return Container();
          } else {
            list = state.list;
            return list.isNotEmpty
                ? ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    children: [
                      Text("Uang anda : Rp. $saldo"),
                      FilledButton(
                          style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll<Color>(Colors.orange),
                          ),
                          onPressed: () {
                            setState(() {
                              saldo = 0;
                            });
                          },
                          child: const Text('Reset Saldo')),
                      const Text("Klik dibawah untuk memasukkan uang anda"),
                      const SizedBox(
                        height: 16,
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          // childAspectRatio: .9
                          mainAxisExtent: 45,
                        ),
                        itemCount: listSaldo.length,
                        itemBuilder: (context, index) {
                          return FilledButton.tonal(
                              onPressed: () {
                                setState(() {
                                  saldo += listSaldo[index];
                                });
                              },
                              child: Text('Rp. ${listSaldo[index]}'));
                        },
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text("Pilih makanan yang mau dibeli"),
                      const SizedBox(
                        height: 16,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Padding(
                              padding: const EdgeInsets.only(bottom: 8),
                              child: FilledButton(
                                  onPressed: () {
                                    context.read<HomeBloc>().add(
                                          HomeEvent.buy(
                                            list[index].id!,
                                            saldo,
                                          ),
                                        );
                                  },
                                  style: const ButtonStyle(
                                    backgroundColor:
                                        MaterialStatePropertyAll<Color>(
                                            Colors.cyan),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text('${list[index].name} ')),
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                              'Rp. ${list[index].price} ')),
                                      Expanded(
                                          flex: 1,
                                          child:
                                              Text('Stok ${list[index].stock}'))
                                    ],
                                  )));
                        },
                      )
                    ],
                  )
                : Center(child: Text('Terjadi Kesalahan : ${state.message}'));
          }
        },
      ),
    );
  }
}
