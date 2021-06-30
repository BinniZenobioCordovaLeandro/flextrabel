import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Widget? child;
  final EdgeInsets padding;
  final double? elevation;
  final ShapeBorder? shape;
  final Color? color;
  final EdgeInsetsGeometry margin;
  final bool borderOnForeground;

  const CardWidget({
    Key? key,
    this.child,
    this.padding: const EdgeInsets.all(2.0),
    this.elevation: 0,
    this.shape,
    this.color,
    this.margin: EdgeInsets.zero,
    this.borderOnForeground: true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ShapeBorder shapeBorder = new RoundedRectangleBorder();
    if (this.shape == null) {
      shapeBorder = RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
        side: BorderSide(
          color: Theme.of(context).cardTheme.shadowColor!,
          width: 2,
        ),
      );
    }
    return Card(
      elevation: this.elevation,
      shape: this.shape ?? shapeBorder,
      color: this.color ?? Theme.of(context).cardTheme.color,
      margin: this.margin,
      borderOnForeground: true,
      child: Container(
        width: double.infinity,
        padding: this.padding,
        child: this.child,
      ),
    );
  }
}
