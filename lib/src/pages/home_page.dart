import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hubtel_coding_challenge/src/components/custom_calendar_bottom_item%20copy.dart';
import 'package:hubtel_coding_challenge/src/components/custom_history_bottom_item.dart';
import 'package:hubtel_coding_challenge/src/components/custom_home_bottom_item.dart';
import 'package:hubtel_coding_challenge/src/components/custom_send_bottom_item.dart';
import 'package:hubtel_coding_challenge/src/general_styles.dart';

import '../bloc/transaction_cubit.dart';
import '../components/custom_date_widget.dart';
import '../components/custom_list_tile.dart';
import '../components/search_bar.dart';
import '../models/transaction_model.dart';

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

  int currentPageIndex = 2;
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(AppBar().preferredSize.height),
            child: Container(
              height: 60.h,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[200],
                ),
                child: TabBar(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                  indicatorColor: Colors.transparent,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  tabs: [
                    Tab(
                      child: SizedBox(
                        // width: 140.w,
                        child: Center(
                            child: Text('History',
                                style: GenTextStyles.extraBold_10px.copyWith(
                                    fontSize: 13.sp, color: Colors.black))),
                      ),
                    ),
                    Tab(
                      child: SizedBox(
                        // width: 160.w,
                        child: Center(
                            child: Text('Transaction Summary',
                                style: GenTextStyles.extraBold_10px
                                    .copyWith(fontSize: 13.sp))),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 1.sh,
            width: 1.sw,
            child: Column(
              children: [
                const SizedBox(height: 16),
                SizedBox(
                  height: 45,
                  width: 1.sw,
                  child: Row(
                    children: [
                      CustomSearchBar(controller: textEditingController),
                      SizedBox(
                          height: 45,
                          width: 45,
                          child: SvgPicture.asset(GenAssetSvgImages.settings))
                    ],
                  ),
                ),
                // ,
                const SizedBox(height: 8),
                Expanded(
                  child: BlocBuilder<TransactionCubit, TransactionState>(
                    builder: (context, state) {
                      if (state is TransactionLoadingState) {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                      if (state is TransactionLoadedSuccessState) {
                        final list = state.results;
                        return Container(
                          padding: const EdgeInsets.only(top: 16),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: list.length,
                            itemBuilder: (context, index) {
                              final TransactionModel item = list[index];
                              return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const SizedBox(height: 4),
                                    Row(children: [
                                      CustomDateWidget(date: item.date)
                                    ]),
                                    SizedBox(height: 16.h),
                                    ...item.info
                                        .map((e) => Container(
                                            margin:
                                                EdgeInsets.only(bottom: 16.h),
                                            child: CustomListTile(data: e)))
                                        .toList(),
                                  ]);
                            },
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                  ),
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
            height: 60,
            width: 158,
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
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(top: BorderSide(color: GenColors.darkGrey))),
          height: 60 + 32.h,
          padding: EdgeInsets.only(top: 16.h, bottom: 8.h),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomHomeBottomItem(onPressed: () {}),
              CustomSendBottomItem(
                  isSelected: currentPageIndex == 1, onPressed: () {}),
              CustomHistoryBottomItem(
                  isSelected: currentPageIndex == 2, onPressed: () {}),
              CustomCalendarBottomItem(
                  isSelected: currentPageIndex == 3, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
