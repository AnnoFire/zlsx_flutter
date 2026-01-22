import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/rule_details_controller.dart';

class RuleDetailsView extends GetView<RuleDetailsController> {
  const RuleDetailsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'RuleDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
