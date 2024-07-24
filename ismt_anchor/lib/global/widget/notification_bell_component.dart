import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismt_anchor/routes/get_routes.dart';

class NotificationBellComponent extends StatelessWidget {
  const NotificationBellComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes
                      .notificationScreen);
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Icon(Icons.notifications_outlined),
                      ),
                    ),
                  );
  }
}