import 'package:flutter/material.dart';

class OutlineButtonWidget extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final Color? color;

  OutlineButtonWidget({
    @required this.title,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (this.onPressed != null) ? () => this.onPressed!() : null,
        style: color == null
            ? Theme.of(context).outlinedButtonTheme.style
            : ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => color!),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                    (Set<MaterialState> states) {
                  return TextStyle(color: Colors.white);
                }),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) return color!;
                  return Colors.transparent;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) return color!;
                  return color!;
                }),
              ),
        child: Container(
          alignment: Alignment(0, 0),
          padding: EdgeInsets.all(9),
          child: Text(
            '${this.title}',
            style: TextStyle(fontSize: 14.0),
          ),
        ));
  }
}

class OutlineButtonWidgetV2 extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final Color? color;
  final bool? enabled;

  OutlineButtonWidgetV2({
    @required this.title,
    this.onPressed,
    this.color,
    this.enabled: true,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: (this.enabled == true) ? () => this.onPressed!() : null,
        style: color == null
            ? Theme.of(context).outlinedButtonTheme.style
            : ButtonStyle(
                overlayColor:
                    MaterialStateColor.resolveWith((states) => color!),
                textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                    (Set<MaterialState> states) {
                  return TextStyle(color: Colors.white);
                }),
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) return color!;
                  return Colors.transparent;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled)) return color!;
                  return color!;
                }),
              ),
        child: Container(
          alignment: Alignment(0, 0),
          padding: EdgeInsets.all(9),
          child: Text(
            '${this.title}',
            style: TextStyle(fontSize: 14.0),
          ),
        ));
  }
}
