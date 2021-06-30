import 'package:flextrabel/widgets/app_bar_widget.dart';
import 'package:flextrabel/widgets/elevated_button_widget.dart';
import 'package:flextrabel/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Flex Trabel',
      ),
      body: SafeArea(
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
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: TextFieldWidget(
                      labelText: 'Origen',
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: TextFieldWidget(
                      labelText: 'Destino',
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: TextFieldWidget(
                      labelText: 'Fecha',
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: ElevatedButtonWidget(
                      title: 'Buscar',
                      onPressed: () {
                        print('go list');
                        Navigator.of(context).pushNamed('list');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text('News'),
          ),
          Container(
            child: Text('Banner'),
          ),
          Container(
            child: Text('footer'),
          )
        ],
      )),
    );
  }
}
