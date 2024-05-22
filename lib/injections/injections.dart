
import 'package:clean_architecture_demo_02/core/repositories/user_repository.dart';
import 'package:clean_architecture_demo_02/core/usecases/register_user.dart';
import 'package:clean_architecture_demo_02/data/repositoriesImpl/user_repositoryImpl.dart';
import 'package:clean_architecture_demo_02/presentation/providers/registration/register_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> providers = [

  Provider<UserRepository>(create: (_)=> UserRepositoryImpl()),
  ProxyProvider<UserRepository, RegisterUser>(update: (_,userRepository,__) => RegisterUser(userRepository)),
  ChangeNotifierProxyProvider<RegisterUser, RegisterProvider>(
      create: (_)=> RegisterProvider(RegisterUser(UserRepositoryImpl())),
      update:(_,registerUser,__) => RegisterProvider(registerUser),
  )



];