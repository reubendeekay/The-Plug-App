import 'package:the_plug/helpers/constants.dart';
import 'package:the_plug/screens/settings_screen/widgets/setting_section.dart';
import 'package:the_plug/screens/settings_screen/widgets/settings_top_profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          SettingsTopProfile(),
          SettingSection(
            children: [
              SettingOption(
                title: 'Edit Profile',
                icon: Icon(Icons.person),
              ),
              Divider(),
              SettingOption(
                title: 'Change Password',
                icon: Icon(Icons.lock),
              ),
            ],
          ),
          SettingSection(
            children: [
              SettingOption(
                title: 'My Posts',
                icon: Icon(Icons.bookmark),
              ),
              Divider(),
              SettingOption(
                title: 'My balance',
              ),
              Divider(),
              SettingOption(
                title: 'Statistics',
                icon: Icon(Icons.insert_chart_outlined),
              ),
            ],
          ),
          SettingSection(
            children: [
              SettingOption(
                title: 'Premium services',
                icon: Icon(
                  FontAwesomeIcons.solidGem,
                  color: Colors.amber,
                  size: 20,
                ),
              ),
              Divider(),
              SettingOption(
                title: 'Contact us',
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  size: 20,
                ),
              ),
            ],
          ),
          SettingSection(
            children: [
              SettingOption(
                title: 'Notifications',
                icon: Icon(Icons.notifications),
              ),
              Divider(),
              SettingOption(
                title: 'Feedback',
                icon: Icon(Icons.textsms),
              ),
              Divider(),
              SettingOption(),
            ],
          ),
        ],
      ),
    );
  }
}
