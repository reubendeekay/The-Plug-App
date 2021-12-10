import 'package:flutter/material.dart';

class SettingSection extends StatelessWidget {
  const SettingSection({Key? key, this.children}) : super(key: key);
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      margin: const EdgeInsets.symmetric(vertical: 5),
      color: Colors.white,
      child: Column(children: children!),
    );
  }
}

class SettingOption extends StatelessWidget {
  const SettingOption({Key? key, this.title, this.icon}) : super(key: key);
  final String? title;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                icon ?? const Icon(Icons.settings),
                const SizedBox(width: 15),
                Text(title ?? 'Settings'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
