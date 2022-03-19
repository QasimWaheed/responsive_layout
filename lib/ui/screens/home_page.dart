import 'package:flutter/material.dart';

import '../widget/girdview_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo Home Page'),
      ),
      body: LayoutBuilder(
        builder: (_, constrain) {
          if (constrain.maxWidth > 1000) {
            return const GridViewWidget(count: 4);
          } else if (constrain.maxWidth > 800 && constrain.maxWidth < 1000){
            return const GridViewWidget(count: 3,);
          } else if (constrain.maxWidth > 600 && constrain.maxWidth < 800){
            return const GridViewWidget(count: 2,);
          }
          else if (constrain.maxWidth < 600) {
            return const GridViewWidget(count: 1);
          }
          return const GridViewWidget(count: 1);
        },
      ),
    );
  }
}