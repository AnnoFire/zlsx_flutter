import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/classes_controller.dart';

class ClassesView extends GetView<ClassesController> {
  const ClassesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassesView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ClassesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
