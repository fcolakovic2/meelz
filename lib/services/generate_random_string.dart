import 'dart:math';

String generateRandomString(int len) {
  var r = Random();
  const _chars = 'ABbCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
  return List.generate(len, (index) => _chars[r.nextInt(_chars.length)]).join();
}
