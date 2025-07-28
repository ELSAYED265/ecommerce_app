import 'package:flutter/material.dart';
import 'package:get/get.dart';

Future<bool> AlertExitApp() {
  Get.defaultDialog(
    title: "Alarm ",
    middleText: "are you sure about exit app",
    actions: [
      ElevatedButton(
        onPressed: () {
          // exit(0);
        },
        child: Text("confirm"),
      ),
      ElevatedButton(
        onPressed: () {
          Get.back();
        },
        child: Text("cancel"),
      ),
    ],
  );
  return Future.value(true);
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:flutter/services.dart'; // عشان SystemNavigator.pop
//
// Future<void> AlertExitApp() async {
//   await Get.defaultDialog(
//     title: "تنبيه",
//     middleText: "هل أنت متأكد أنك تريد الخروج من التطبيق؟",
//     actions: [
//       ElevatedButton(
//         onPressed: () {
//           SystemNavigator.pop(); // يخرج من التطبيق كله
//         },
//         child: Text("تأكيد"),
//       ),
//       ElevatedButton(
//         onPressed: () {
//           Get.back(); // يغلق الديالوج فقط
//         },
//         child: Text("إلغاء"),
//       ),
//     ],
//   );
// }
