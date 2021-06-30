import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final String? title;
  final Function? onPressed;
  final Color? color;
  final bool enabled;
  final OutlinedBorder? shape;

  const ElevatedButtonWidget({
    Key? key,
    @required this.title,
    @required this.onPressed,
    this.color,
    this.enabled: true,
    this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 50.0,
      child: ElevatedButton(
        style: color == null
            ? shape != null
                ? ElevatedButton.styleFrom(shape: this.shape)
                : Theme.of(context).elevatedButtonTheme.style
            : ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return this.color!;
                  if (states.contains(MaterialState.pressed))
                    return this.color!;
                  return this.color!;
                }),
                foregroundColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                  if (states.contains(MaterialState.disabled))
                    return this.color!;
                  return this.color!;
                }),
              ),
        onPressed: (this.enabled == true)
            ? () {
                this.onPressed!();
              }
            : null,
        child: Text(
          '${this.title}',
        ),
      ),
    );
  }
}
