import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hubtel_coding_challenge/bloc/transaction_cubit.dart';
import 'package:hubtel_coding_challenge/components/custom_date_widget.dart';
import 'package:hubtel_coding_challenge/components/custom_list_tile.dart';
import 'package:hubtel_coding_challenge/components/search_bar.dart';
import 'package:hubtel_coding_challenge/models/transaction_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TransactionCubit(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    context.read<TransactionCubit>().getTransactionHistory();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          height: deviceSize.height,
          width: deviceSize.width,
          child: Column(
            children: [
              CustomSearchBar(controller: textEditingController),
              const SizedBox(height: 8),
              BlocBuilder<TransactionCubit, TransactionState>(
                builder: (context, state) {
                  if (state is TransactionLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state is TransactionLoadedSuccessState) {
                    final list = state.results;
                    return SizedBox(
                      height: deviceSize.height * 0.78,
                      child: ListView.builder(
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          final TransactionModel item = list[index];
                          return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomDateWidget(date: item.date),
                                ...item.info
                                    .map((e) => CustomListTile(data: e))
                                    .toList(),
                              ]);
                        },
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: GestureDetector(
        onTap: () {
          print("pressed");
        },
        child: Container(
          // height: 120,
          width: 200,
          constraints:
              BoxConstraints(minHeight: 56, minWidth: 0.25 * deviceSize.width),
          decoration: BoxDecoration(
              color: Colors.teal, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.teal,
                  )),
              const SizedBox(width: 8),
              const Text(
                "SEND NEW",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.black,
          items: const [
            BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Send", icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "History", icon: Icon(Icons.report)),
            BottomNavigationBarItem(
                label: "Scheduled", icon: Icon(Icons.calendar_month))
          ]),
    );
  }
}
