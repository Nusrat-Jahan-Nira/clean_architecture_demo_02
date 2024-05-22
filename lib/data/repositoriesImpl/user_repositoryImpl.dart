

import 'package:clean_architecture_demo_02/core/repositories/user_repository.dart';
import 'package:clean_architecture_demo_02/data/models/user.dart';

class UserRepositoryImpl implements UserRepository{
  @override
  Future<void> registerUser(User user) async {
    // Simulate network call or database interaction
    await Future.delayed(const Duration(seconds: 2));
    // Normally, you would handle actual registration logic here
  }

}