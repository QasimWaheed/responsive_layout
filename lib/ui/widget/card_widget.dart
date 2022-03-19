import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../model/user_model.dart';


class CardWidget extends StatelessWidget {
  const CardWidget({Key? key, required this.userModel,}) : super(key: key);
  final UserModel userModel;

  @override
  Widget build(BuildContext context) {
    RxDouble size = RxDouble(Get.textScaleFactor);
    return Obx(() => Card(
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Icon(Icons.account_circle, size: 80 * size.value,),
            ),
            Expanded(
              flex: 0,
              child: Text(userModel.name, style: TextStyle(fontSize: 18 * size.value, fontWeight: FontWeight.w500),),
            ),
            Expanded(
              flex: 0,
              child: Text(userModel.time, style: TextStyle(fontSize: 14 * size.value, fontWeight: FontWeight.w400, color: Colors.black54),),
            ),
          ],
        ),
      ),
    ));
  }
}