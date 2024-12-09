import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class CustomNavBarWidget extends StatelessWidget {
  final int selectedIndex;
  final List<PersistentBottomNavBarItem>
      items; // NOTE: You CAN declare your own model here instead of `PersistentBottomNavBarItem`.
  final ValueChanged<int> onItemSelected;

  const CustomNavBarWidget({
    super.key,
    required this.selectedIndex,
    required this.items,
    required this.onItemSelected,
  });

  Widget _buildItem(PersistentBottomNavBarItem item, bool isSelected) {
    if (item.title != null) {
      return Container(
        color: const Color(0xffE6E6E6),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              fit: FlexFit.loose,
              child: item.icon,
            ),
            FittedBox(
                child: Text(
              item.title!,
              style: TextStyle(
                color: isSelected
                    ? (item.activeColorSecondary ?? item.activeColorPrimary)
                    : item.inactiveColorPrimary,
                fontWeight: FontWeight.w400,
                fontSize: 12.0,
              ),
            ))
          ],
        ),
      );
    }
    return Container(
      padding: const EdgeInsets.all(16),
      decoration:
          const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
      child: Image.asset(
        'assets/icon_nav_home.png',
        scale: 1,
        height: 40,
        fit: BoxFit.scaleDown,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffE6E6E6),
      width: double.infinity,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: items.map((item) {
          int index = items.indexOf(item);
          return Expanded(
            child: Material(
              color: const Color(0xffE6E6E6),
              child: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  onItemSelected(index);
                },
                child: _buildItem(item, selectedIndex == index),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
