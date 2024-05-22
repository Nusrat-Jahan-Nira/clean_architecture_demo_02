


import 'package:clean_architecture_demo_02/core/repositories/user_repository.dart';
import 'package:clean_architecture_demo_02/core/validations/register_validation.dart';
import 'package:clean_architecture_demo_02/data/models/user.dart';

class RegisterUser{

  final UserRepository userRepository;

  RegisterUser(this.userRepository);

  Future<void> execute(User user)async {
    isUserValid(user);

    try {
      await userRepository.registerUser(user);
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }



}