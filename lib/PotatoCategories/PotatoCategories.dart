import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:potato_categories/PotatoCategories/constants.dart';
import 'package:potato_categories/PotatoCategories/tab_item_controller.dart';

class PotatoCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TabItemController _controller = Get.put(TabItemController());
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      height: 80,
      // decoration: BoxDecoration(
      //   color: Colors.grey[300],
      //   borderRadius: BorderRadius.circular(10),
      // ),
      child: Obx(
        () => Row(
          children: List.generate(5, (index) {
            var tFlex = 2;
            var isActive = false;
            if (index == _controller.curIndex.value) {
              tFlex = 3;
              isActive = true;
            } else {
              tFlex = 2;
              isActive = false;
            }
            return Expanded(
              flex: tFlex,
              child: GestureDetector(
                child: CategoryItem(isActive),
                onTap: () {
                  _controller.setIndex(index);
                },
              ),
            );
          }),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget CategoryItem(bool isActive) {
    return Container(
      height: 70,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: isActive ? Constants.bgColorActive : Constants.bgColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.sports_basketball,
            color: isActive
                ? Constants.contentColorActive
                : Constants.contentColor,
          ),
          Text(
            isActive ? '2D' : '',
            style: TextStyle(
              color: isActive
                  ? Constants.contentColorActive
                  : Constants.contentColor,
            ),
          ),
        ],
      ),
    );
  }
}
