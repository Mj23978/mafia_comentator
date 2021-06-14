import 'package:flutter/material.dart';
import 'package:flutter_comentator/utils/helpers.dart';
import 'package:get/get.dart';

class NotFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Page Not Found',
                style: textStyle(22, weight: FontWeight.w400)),
            const SizedBox(height: 25),
            ElevatedButton(
              child: Text('Back to ${Get.routing.previous}',
                  style: textStyle(16, weight: FontWeight.w400)),
              onPressed: () => Get.back(),
            )
          ],
        ),
      ),
    );
  }
}
