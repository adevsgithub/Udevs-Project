import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:udevs_project/constants/app_colors.dart';
import 'package:udevs_project/ui/constants/my-bottom-sheet.dart';
import 'package:udevs_project/ui/empty_screen.dart';
import '../bloc/tabs-cubit/tabs_cubit.dart';

class MainTabsPage extends StatefulWidget {
  const MainTabsPage({super.key});

  @override
  State<MainTabsPage> createState() => _MainTabsPageState();
}

class _MainTabsPageState extends State<MainTabsPage> {
  final tabsCubit = TabsCubit();
  double _dotsheight = 20.h;
  double _dotswidht = 30.w;

  get onChanged => null;

  void _boxAnimated() {
    setState(() {
      _dotsheight = 70.h;
      _dotswidht = 100.w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabsCubit, int>(
      bloc: tabsCubit,
      builder: (context, int state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: [
              const EmptyScreen(),
              Container(color: Colors.green),
            ],
          ),
          floatingActionButton: SizedBox(
            height: 60.0.h,
            width: 60.0.w,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: AppColors.btnColor,
                onPressed: () {
                  // showModalBottomSheet(
                  //     context: context,
                  //     builder: (context) {
                  //       // using a scaffold helps to more easily position the FAB
                  //       return Scaffold(
                  //         body: Column(
                  //           crossAxisAlignment: CrossAxisAlignment.center,
                  //           children: [
                  //             SizedBox(
                  //               width: double.maxFinite,
                  //             ),
                  //             Padding(
                  //               padding: EdgeInsets.all(30.0),
                  //               child: Text("Text in the sheet"),
                  //             ),
                  //           ],
                  //         ),
                  //         // translate the FAB up by 30
                  //         floatingActionButton: Container(
                  //           transform: Matrix4.translationValues(0.0, -30, 0.0), // translate up by 30
                  //           child: FloatingActionButton(
                  //             onPressed: () {
                  //               // do stuff
                  //               print('doing stuff');
                  //             },
                  //             child: Icon(Icons.add),
                  //           ),
                  //         ),
                  //         // dock it to the center top (from which it is translated)
                  //         floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
                  //       );
                  //     });
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      backgroundColor: Colors.white,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topEnd: Radius.elliptical(200, 36),
                          topStart: Radius.elliptical(200, 36),
                        ),
                      ),
                      builder: (context) => const MyBottomSheet());
                },
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                // elevation: 5.0,
              ),
            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            child: Container(
              height: 44.h,
              margin: const EdgeInsets.only(
                top: 12,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  bottomTabItem(state, 'Home', 0),
                  const SizedBox(),
                  bottomTabItem(state, 'Task', 1),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  GestureDetector bottomTabItem(int state, String title, int index) {
    return GestureDetector(
      onTap: () {
        tabsCubit.changeTab(index);
      },
      child: SizedBox(
        height: 44.h,
        child: Column(
          children: [
            SvgPicture.asset(
              'assets/icons/ic_tab_${index + 1}.svg',
              color: state == index ? AppColors.blueColor : AppColors.tabInactiveColor,
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                color: state == index ? AppColors.blueColor : AppColors.tabInactiveColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RaisedButton {}
