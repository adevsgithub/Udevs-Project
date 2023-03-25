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
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TabsCubit, int>(
      bloc: tabsCubit,
      builder: (context, int state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: [
              EmptyScreen(_isPressed),
            ],
          ),
          floatingActionButton: SizedBox(
            height: 60.0.h,
            width: 60.0.w,
            child: FittedBox(
              child: FloatingActionButton(
                backgroundColor: AppColors.btnColor,
                onPressed: () {
                  _isPressed = true;
                  setState(() {});
                  Future.delayed(const Duration(seconds: 2)).then((value) {
                    _isPressed = false;
                    setState(() {});
                  });

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
              margin: const EdgeInsets.only(top: 12),
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