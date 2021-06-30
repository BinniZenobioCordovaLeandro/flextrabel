import 'package:flextrabel/widgets/app_bar_widget.dart';
import 'package:flutter/material.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Retorno',
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Wrap(
          children: [
            Container(
              child: Text(
                'Mensaje de exito',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
