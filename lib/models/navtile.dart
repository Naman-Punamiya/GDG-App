import 'package:flutter/material.dart';

class NavTile extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  const NavTile({super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: Padding(
            padding: EdgeInsets.all(8),
            child: Icon(
              icon,
              color: Colors.white,
            )),
        title: Text(
          text,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        onTap: onTap,
      ),
    );
  }
}
