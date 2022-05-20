import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class Panel extends StatelessWidget {
  final ScrollController controller;
  final PanelController panelController;

  const Panel(
      {Key? key, required this.controller, required this.panelController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      controller: controller,
      children: const <Widget>[
        SizedBox(height: 32),
        Center(child: Text("PANEL")),
      ],
    );
  }
}
