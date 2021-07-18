import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_tw/controllers/home_controller.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.find();
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Center(
        child: Text(homeController.counter.toString()),
      ),
    );
  }
}
