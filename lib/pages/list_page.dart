import 'package:flextrabel/widgets/app_bar_widget.dart';
import 'package:flextrabel/widgets/travel_route_card_widget.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Viajes encontrados',
        showGoback: true,
        actions: [
          IconButton(
            icon: Icon(Icons.swap_vert),
            color: Colors.white,
            onPressed: () {
              print('order');
            },
          ),
          IconButton(
            icon: Icon(Icons.filter_list),
            color: Colors.white,
            onPressed: () {
              print('filter');
            },
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FractionallySizedBox(
              widthFactor: 0.9,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Wrap(
                  direction: Axis.horizontal,
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    for (var i = 0; i < 10; i++)
                      TravelRouteCardWidget(
                        key: Key('TravelRouteCardWidget$i'),
                        onPressed: () {
                          print('pay');
                          Navigator.of(context).pushNamed('pay');
                        },
                      ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
