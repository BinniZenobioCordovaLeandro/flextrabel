import 'package:flextrabel/widgets/card_widget.dart';
import 'package:flextrabel/widgets/outline_button_widget.dart';
import 'package:flutter/material.dart';

class TravelRouteCardWidget extends StatelessWidget {
  final Function? onPressed;

  const TravelRouteCardWidget({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: CardWidget(
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Flex(
                  direction: Axis.horizontal,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Flex(
                        direction: Axis.vertical,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Container(
                                  child: Text(
                                    '09:15',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.subdirectory_arrow_left_outlined,
                                    color: Colors.green,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Lima la capital del Perú',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            child: Flex(
                              direction: Axis.horizontal,
                              children: [
                                Container(
                                  child: Text(
                                    '23:00',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ),
                                Container(
                                  child: Icon(
                                    Icons.subdirectory_arrow_right_outlined,
                                    color: Colors.orange,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    'Plaza central de Ayacucho',
                                    style:
                                        Theme.of(context).textTheme.bodyText2,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'S/ 100.00',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                          Text(
                            'viaje',
                            style: Theme.of(context).textTheme.caption,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: 200,
                  child: OutlineButtonWidget(
                    title: 'Seleccionar',
                    onPressed: () {
                      print('pressed');
                      this.onPressed!();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
