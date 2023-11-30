import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../i18n.g/strings.g.dart';

class MyNavigationDrawer extends StatelessWidget {
  const MyNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        _NavDrawerItem(title: tx.ui.pageTitles.home, to: "/"),
        const Divider(),
        _NavDrawerItem(title: tx.ui.pageTitles.characters, to: "/characters"),
      ],
    );
  }
}

class _NavDrawerItem extends StatelessWidget {
  const _NavDrawerItem({super.key, required this.title, required this.to});

  final String title;
  final String to;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        context.pop();
        context.go(to);
      },
    );
  }
}
