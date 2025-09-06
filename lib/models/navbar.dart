import 'package:flutter/material.dart';
import 'package:gdg_app/models/navtile.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                NavTile(icon: Icons.home_rounded, text: "Home", onTap: () {}),
                NavTile(
                    icon: Icons.person_rounded, text: "Profile", onTap: () {}),
                NavTile(
                    icon: Icons.groups_rounded, text: "About us", onTap: () {}),
                Divider(
                  thickness: 2,
                ),
                NavTile(
                    icon: Icons.bookmark_rounded,
                    text: "Bookmark",
                    onTap: () {}),
                NavTile(
                    icon: Icons.notifications_outlined,
                    text: "Notification",
                    onTap: () {}),
                NavTile(
                    icon: Icons.chat_bubble_outline_rounded,
                    text: "Message",
                    onTap: () {}),
                Divider(
                  thickness: 2,
                ),
                NavTile(
                    icon: Icons.settings_outlined,
                    text: "Setting",
                    onTap: () {}),
                NavTile(
                    icon: Icons.help_outline_rounded,
                    text: "Help",
                    onTap: () {}),
                NavTile(
                    icon: Icons.power_settings_new_rounded,
                    text: "Logout",
                    onTap: () {}),
              ],
            ),
          ),
        ));
  }
}
