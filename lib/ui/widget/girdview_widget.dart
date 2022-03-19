import 'package:flutter/material.dart';

import '../../model/user_model.dart';
import 'card_widget.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({Key? key, required this.count}) : super(key: key);
  final int count;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      shrinkWrap: true,
      childAspectRatio: count == 1 ? 2.5 : 1.50,
      children: _list.map((user) => CardWidget(
        userModel: user,
      )).toList(),
      crossAxisCount: count,
    );
  }
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