import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_flutter_app/home.dart';
import 'package:my_flutter_app/location.dart';
import 'package:my_flutter_app/main_page/contribute_tab.dart';
import 'package:my_flutter_app/main_page/coupons_page.dart';
import 'package:my_flutter_app/main_page/custom_nav_bar_widget.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final PersistentTabController controller =
      PersistentTabController(initialIndex: 0);

  final ValueNotifier<int> index = ValueNotifier<int>(0);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView.custom(
      context,
      screens: [
        const CustomNavBarScreen(screen: CouponsPage()),
        CustomNavBarScreen(screen: LocationListScreen()),
        const CustomNavBarScreen(screen: HomeScreen()),
        CustomNavBarScreen(screen: ContributeTab()),
        CustomNavBarScreen(screen: ContributeTab()),
      ],
      itemCount: 5,
      navBarHeight: 80,
      controller: controller,
      handleAndroidBackButtonPress: false,
      backgroundColor: const Color(0xffE6E6E6),
      customWidget: ValueListenableBuilder(
        valueListenable: index,
        builder: (context, value, child) {
          return CustomNavBarWidget(
            selectedIndex: index.value,
            items: _navBarsItems(),
            onItemSelected: (value) {
              index.value = value;
              controller.jumpToTab(value);
            },
          );
        },
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
          icon: SvgPicture.asset(
            'assets/icon_coupons.svg',
            colorFilter: ColorFilter.mode(
              index.value == 0 ? const Color(0xff51C779) : Colors.black,
              BlendMode.srcATop,
            ),
          ),
          title: ("Coupons"),
          scrollToTopOnNavBarItemPress: true,
          activeColorPrimary: const Color(0xff51C779),
          inactiveColorPrimary: Colors.black,
          routeAndNavigatorSettings: RouteAndNavigatorSettings(
            initialRoute: '/',
            routes: {
              "/detail": (final context) => const CouponsPage(),
            },
          )),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icon_champion.svg',
          colorFilter: ColorFilter.mode(
            index.value == 1 ? const Color(0xff51C779) : Colors.black,
            BlendMode.srcATop,
          ),
        ),
        title: ("BXH"),
        activeColorPrimary: const Color(0xff51C779),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(CupertinoIcons.settings),
        // title: ("Home"),
        activeColorPrimary: const Color(0xff51C779),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icon_contribute.svg',
          colorFilter: ColorFilter.mode(
            index.value == 3 ? const Color(0xff51C779) : Colors.black,
            BlendMode.srcATop,
          ),
        ),
        title: ("Đóng góp"),
        activeColorPrimary: const Color(0xff51C779),
        inactiveColorPrimary: Colors.black,
      ),
      PersistentBottomNavBarItem(
        icon: SvgPicture.asset(
          'assets/icon_user.svg',
          colorFilter: ColorFilter.mode(
            index.value == 4 ? const Color(0xff51C779) : Colors.black,
            BlendMode.srcATop,
          ),
        ),
        title: ("Của tôi"),
        activeColorPrimary: const Color(0xff51C779),
        inactiveColorPrimary: Colors.black,
      ),
    ];
  }
}
