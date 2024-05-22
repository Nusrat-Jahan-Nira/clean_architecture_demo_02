

import 'package:clean_architecture_demo_02/data/models/user.dart';

abstract class UserRepository{

  Future<void> registerUser(User user);
}