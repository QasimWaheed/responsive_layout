import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:responsive_layout/model/user_model.dart';
import 'package:responsive_layout/widget/listtile_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

final List<UserModel> _list = [
  UserModel(name: "Susan"),
  UserModel(name: "Alex"),
  UserModel(name: "Watson"),
  UserModel(name: "Adan"),
  UserModel(name: "Bale"),
  UserModel(name: "Gill"),
  UserModel(name: "Finn"),
  UserModel(name: "Hazel"),
];

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
            return const NarrowLayout(count: 4);
          } else if (constrain.maxWidth > 800 && constrain.maxWidth < 1000){
            return const NarrowLayout(count: 3,);
          } else if (constrain.maxWidth > 600 && constrain.maxWidth < 800){
            return const NarrowLayout(count: 2,);
          }
          else if (constrain.maxWidth < 600) {
            return const NarrowLayout(count: 1);
          }
          return const NarrowLayout(count: 1);
        },
      ),
    );
  }
}

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({Key? key, required this.count}) : super(key: key);
  final int count;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      shrinkWrap: true,
      childAspectRatio: count == 1 ? 2.5 : 1.50,
      children: _list.map((user) => ListTileWidget(
        userModel: user,
      )).toList(),
      crossAxisCount: count,
    );
  }
}
