import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app/config/app_colors.dart';
import '../bottom_bar/controller/bottom_bar_controller.dart';

class SearchCategories extends GetView<BottomBarController> {
  const SearchCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<BottomBarController>(
      builder: (value) {
        return Container(
          padding: const EdgeInsets.only(bottom: 15.0),
          height: 50.0,
          width: MediaQuery.of(context).size.width,
          color: AppColors.primary,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              bool isSelected = controller.selectedCategories.contains(index);

              return GestureDetector(
                onTap: () {
                  if (isSelected) {
                    controller.selectedCategories.remove(index);
                  } else {
                    controller.selectedCategories.add(index);
                  }
                  controller.update();
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 7.0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 25.0, vertical: 7.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                        width: 0.3,
                        color: Colors.black.withOpacity(0.6),
                      ),
                      color: isSelected ? Colors.blue : AppColors.white,
                    ),
                    child: Center(
                      child: Text(
                        controller.categories[index],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color:
                                isSelected ? AppColors.white : AppColors.black),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
