// import 'dart:io';
//
// ChekInternet() async {
//   try {
//     var result = await InternetAddress.lookup('http://www.google.com');
//     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
//       return true;
//     }
//   } on SocketException catch (e) {
//     return false;
//   }
//   return false;
// }
import 'package:http/http.dart' as http;
import 'package:universal_io/io.dart';

Future<bool> ChekInternet() async {
  try {
    if (Platform.isAndroid ||
        Platform.isIOS ||
        Platform.isWindows ||
        Platform.isLinux ||
        Platform.isMacOS) {
      // للأنظمة غير Web
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } else {
      // للويب (Flutter Web) - طريقة بديلة
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
      );
      return response.statusCode == 200;
    }
  } catch (e) {
    print('❌ Internet check failed: $e');
    return false;
  }
}

// import 'package:http/http.dart' as http;
//
// Future<bool> ChekInternet() async {
//   try {
//     final result = await http.get(Uri.parse('https://www.google.com'));
//     if (result.statusCode == 200) {
//       return true;
//     } else {
//       return false;
//     }
//   } catch (_) {
//     return false;
//   }
// }
