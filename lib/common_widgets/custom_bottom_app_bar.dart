import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:joy_box_app/common_widgets/custom_image_view.dart';
import 'package:joy_box_app/res/color.dart';

import '../core/utils/image_constant.dart';

class CustomBottomAppBar extends StatefulWidget {
  CustomBottomAppBar({super.key, this.onChanged});

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomAppBarState createState() => CustomBottomAppBarState();
}

class CustomBottomAppBarState extends State<CustomBottomAppBar> {
  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
      isSelected: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrame,
      activeIcon: ImageConstant.imgFrame,
      type: BottomBarEnum.Frame,
    ),
    BottomMenuModel(
      icon: "assets/images/Navbar_Shoping.svg",
      activeIcon: "assets/images/Navbar_Shoping.svg",
      type: BottomBarEnum.Framewhitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFrameWhiteA700,
      activeIcon: ImageConstant.imgFrameWhiteA700,
      type: BottomBarEnum.Framewhitea700,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearch,
      activeIcon: ImageConstant.imgSearch,
      type: BottomBarEnum.Search,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.w),
      child: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: const Color(0XFF2099AA), // Change background color to black
        child: SizedBox(
          height: 60, // Increase the height of the bottom navigation bar
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  bottomMenuList.length,
                  (index) {
                    return InkWell(
                      onTap: () {
                        for (var element in bottomMenuList) {
                          element.isSelected = false;
                        }
                        bottomMenuList[index].isSelected = true;
                        widget.onChanged?.call(bottomMenuList[index].type);
                        setState(() {});
                      },
                      child: bottomMenuList[index].isSelected
                          ? Container(
                              height: 60.h,
                              width: 54.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.w),
                                color: AppColor.amber,
                              ),
                              child: SizedBox(
                                height: 20.w,
                                width: 21.w,
                                child: Center(
                                  child: CustomImageView(
                                    margin: const EdgeInsets.all(10),
                                    imagePath: bottomMenuList[index].activeIcon,
                                    color: AppColor.black,
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                          : CustomImageView(
                              imagePath: bottomMenuList[index].icon,
                              height: 21.w,
                              width: 21.w,
                              color: AppColor.white,
                            ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Frame,
  Framewhitea700,
  Search,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
    this.isSelected = false,
  });

  final String icon;
  final String activeIcon;
  final BottomBarEnum type;
  bool isSelected;
}

class DefaultWidget extends StatelessWidget {
  const DefaultWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffffffff),
      padding: const EdgeInsets.all(10),
      child: const Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
