import 'package:meelz/services/generate_random_string.dart';

class GenerateStringViewModel {
  String generateRandomStringModel(len) {
    return GenerateStringService().generateRandomString(len);
  }
}
