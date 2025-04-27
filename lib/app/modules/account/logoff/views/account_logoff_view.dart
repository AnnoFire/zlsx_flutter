import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/account_logoff_controller.dart';

class AccountLogoffView extends GetView<AccountLogoffController> {
  const AccountLogoffView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AccountLogoffView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'AccountLogoffView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
