

import 'package:clean_architecture_demo_02/core/network/error/registration_exceptions.dart';
import 'package:clean_architecture_demo_02/data/models/user.dart';

void isUserValid(User user) {
  if (user.username.isEmpty) {
    throw RegistrationException('Username cannot be empty');
  }
  if (user.email.isEmpty || !_isValidEmail(user.email)) {
    throw RegistrationException('Invalid email address');
  }
  if (user.password.isEmpty || user.password.length < 6) {
    throw RegistrationException('Password must be at least 6 characters long');
  }

}

bool _isValidEmail(String email) {
  // Simple email validation using regex
  final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
  return regex.hasMatch(email);
}