import 'package:flutter/material.dart';
import 'package:flutter_locales/flutter_locales.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    required this.icon,
    required this.routeName,
  });
  final String title;
  final IconData icon;
  final String routeName;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: LocaleText(title),
      leading: Icon(icon, size: 30, color: Colors.black),
      trailing: Icon(Icons.arrow_forward_ios, size: 18),
      onTap: () => Navigator.of(context).pushNamed(routeName),
    );
  }
}
