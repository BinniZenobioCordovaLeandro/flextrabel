import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final List<IconButton>? actions;
  final bool showGoback;
  final Function? onPressedGoBack;

  const AppBarWidget({
    Key? key,
    this.title,
    this.actions,
    this.showGoback = false,
    this.onPressedGoBack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      leading: (this.showGoback)
          ? IconButton(
              icon: Icon(Icons.arrow_back_ios),
              color: Colors.white,
              tooltip: 'Ir atras',
              onPressed: () {
                if (this.onPressedGoBack != null) {
                  this.onPressedGoBack!();
                } else {
                  Navigator.of(context).pop();
                }
              })
          : null,
      toolbarHeight: 56,
      elevation: 1,
      centerTitle: this.title != null ? false : true,
      title: this.title != null
          ? Container(
              width: double.infinity,
              child: FractionallySizedBox(
                widthFactor: 0.9,
                child: Text(
                  '${this.title}',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                      ),
                ),
              ),
            )
          : Container(),
      actions: this.actions,
      backgroundColor: Theme.of(context).accentColor,
    );
  }

  Size get preferredSize {
    return new Size.fromHeight(56.0);
  }
}
