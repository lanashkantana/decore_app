import 'package:first_task/core/helpers/app_colors.dart';
import 'package:first_task/core/helpers/app_icons.dart';
import 'package:first_task/features/home_page/ui/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  final List<String> icons = [
    AppIcons.homeIcon,
    AppIcons.menuIcon,
    AppIcons.cartIcon,
    AppIcons.wishlistIcon,
    AppIcons.profileIcon,
  ];

  final List<String> titles = [
    'Home',
    'Menu',
    'Cart',
    'Love',
    'Profile',
  ];

  final List<Widget> screens = [
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
    HomePage(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return List.generate(icons.length, (i) {
      return PersistentBottomNavBarItem(
        icon: StatefulBuilder(
          builder: (context, setStateIcon) {
            final isSelected = _controller.index == i;

            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  icons[i],
                  color: isSelected ? AppColors.charcoalBrown : AppColors.lightpink,
                  width: 30.w,
                  height: 30.h,
                ),
                if (isSelected)
                  Container(
                    // margin: const EdgeInsets.only(top: 3),
                    // width: 50,
                    // height: 0,
                    decoration: BoxDecoration(
                      color: AppColors.charcoalBrown,
                      borderRadius: BorderRadius.circular(1),
                    ),
                  ),
              ],
            );
          },
        ),
        title: titles[i],
        activeColorPrimary: AppColors.charcoalBrown,
        inactiveColorPrimary: AppColors.lightpink,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: screens,
      items: _navBarsItems(),
      navBarStyle: NavBarStyle.style13,
      backgroundColor: AppColors.white,
      decoration: NavBarDecoration(
        colorBehindNavBar: AppColors.charcoalBrown,
      ),
      resizeToAvoidBottomInset: true,
      onItemSelected: (index) {
        setState(() {});
      },
    );
  }
}
