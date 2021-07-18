import 'package:flutter/material.dart';

class WhatsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Color(0xff014f42);
  final Text? title;
  final AppBar appbar = AppBar();
  final IconButton? whatsIconButton;
  final List<Widget>? actions;

  /// you can add more fields that meet your needs
  WhatsAppBar({this.title, this.whatsIconButton, this.actions});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Row(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 0),
            child: this.title,
          ),
        ],
      ),
      leading: whatsIconButton,
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize =>
      new Size.fromHeight(this.appbar.preferredSize.height);
}
