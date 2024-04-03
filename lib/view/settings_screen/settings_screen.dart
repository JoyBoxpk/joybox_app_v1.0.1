import 'package:flutter/material.dart';

import '../../common_widgets/common_appbar.dart';
import '../../common_widgets/common_switch_widget.dart';
import '../../common_widgets/custom_image_view.dart';

class SettingScreen extends StatelessWidget {
  // ignore: use_super_parameters
  const SettingScreen({Key? key}) : super(key: key);
  static const String routeName = 'settingscreen';

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> _controller;

    return Scaffold(
      appBar: const CommonAppBar(
        text: "Settings",
      ),
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(
            parent: NeverScrollableScrollPhysics()),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            SettingColumnItemButton(
              main_settingtitle: "Account",
              settingiconimg: "assets/images/Group.svg",
              settingsItems: [
                SettingsItem(
                  text: "Edit Profile",
                  icon: Icons.keyboard_arrow_right_outlined,
                ),
                SettingsItem(
                  text: "Change Password",
                  icon: Icons.keyboard_arrow_right_outlined,
                ),
                SettingsItem(
                  text: "Privacy",
                  icon: Icons.keyboard_arrow_right_outlined,
                ),
              ],
            ),
            SettingColumnItemButton(
              main_settingtitle: "Notification",
              settingiconimg: "assets/images/settings_screen_img2.svg",
              settingsItems: [
                SettingsItem(
                  text: "Notifications",
                  icon: Icons.keyboard_arrow_right_outlined,
                  hasSwitch: true, // No switch for this item
                ),
                SettingsItem(
                  text: "App Notifications",
                  icon: Icons.keyboard_arrow_right_outlined,
                  hasSwitch: true, // Switch for this item
                ),
              ],
            ),
            SettingColumnItemButton(
              main_settingtitle: "Other",
              settingiconimg: "assets/images/settings_screen_img3.svg",
              settingsItems: [
                SettingsItem(
                  text: "Language",
                  icon: Icons.keyboard_arrow_right_outlined,
                ),
                SettingsItem(
                  text: "City",
                  icon: Icons.keyboard_arrow_right_outlined,
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: CustomImageView(
                imagePath: "assets/images/settings_screen_img5.svg",
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SettingColumnItemButton extends StatelessWidget {
  final List<SettingsItem> settingsItems;
  final main_settingtitle;
  // ignore: prefer_typing_uninitialized_variables
  final settingiconimg;

  const SettingColumnItemButton({
    super.key,
    required this.settingsItems,
    // ignore: non_constant_identifier_names
    this.main_settingtitle,
    this.settingiconimg,
  });

  @override
  Widget build(BuildContext context) {
        final textstyle = Theme.of(context).textTheme;

    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
      //padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: settingiconimg,
              ),
              const SizedBox(width: 20),
              Text(main_settingtitle,style: textstyle.bodyMedium,),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 1,
            color: Colors.redAccent,
          ),
          const SizedBox(height: 10),
          ...settingsItems
              .map((item) => Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: SettingsRowItemButton(item: item)))
              .toList(),
        ],
      ),
    );
  }
}

class SettingsRowItemButton extends StatelessWidget {
  
  final SettingsItem item;

  const SettingsRowItemButton({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
        final textstyle = Theme.of(context).textTheme;

    final _controller = ValueNotifier<bool>(false);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item.text,style: textstyle.bodyMedium,),

          // Display either an icon or a switch based on the 'hasSwitch' property
          item.hasSwitch
              ? CommonSwitch(controller: _controller)
              : Icon(item.icon),
        ],
      ),
    );
  }
}

class SettingsItem {
  final String text;
  final IconData icon;
  final bool hasSwitch;

  SettingsItem(
      {required this.text, required this.icon, this.hasSwitch = false});
}
