import 'package:flutter/material.dart';
import 'package:flutter_slidinguppanel/panel.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final panelController = PanelController();
  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    final panelHeightOpen = MediaQuery.of(context).size.height * 0.7;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SlidingUpPanel(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Click Here to Build a New Panel',
              ),
              TextButton(
                onPressed: () {
                  //TODO: Build new Panel
                },
                child: const Text("Click"),
              ),
            ],
          ),
        ),
        controller: panelController,
        maxHeight: panelHeightOpen,
        defaultPanelState: PanelState.CLOSED,
        minHeight: 120,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        backdropTapClosesPanel: true,
        //panel: ,
        panelBuilder: (controller) {
          return Panel(
            controller: controller,
            panelController: panelController,
          );
        },
      ),
    );
  }
}
