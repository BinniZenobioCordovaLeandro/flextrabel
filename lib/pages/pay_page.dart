import 'package:flextrabel/widgets/app_bar_widget.dart';
import 'package:flextrabel/widgets/elevated_button_widget.dart';
import 'package:flutter/material.dart';

class PayPage extends StatelessWidget {
  const PayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Paga',
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: FractionallySizedBox(
          widthFactor: 0.9,
          child: ElevatedButtonWidget(
              title: 'Pagar',
              onPressed: () {
                print('pagar');
                Navigator.of(context).pushNamed('feedback');
              }),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                child: Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    Container(
                      child: Text('Datos de pasajero'),
                    ),
                    Container(
                      child: Text('Tarjetas de credito guardadas'),
                    ),
                    Container(
                      child: Text('Nueva tarjeta de credito'),
                    ),
                  ],
                ),
              ),
              Container(
                child: Text('Resumen de viaje'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
