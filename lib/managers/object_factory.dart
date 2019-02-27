
  import 'package:flutter_ui_app/Managers/api_client.dart';
import 'package:flutter_ui_app/Managers/user_manager.dart';

class ObjectFactory {
  static final _objectFactory = ObjectFactory._internal();

  ObjectFactory._internal();

  factory ObjectFactory() => _objectFactory;

  ApiClient _apiClient = new ApiClient();

  UserManager _userManager = new UserManager();

  ApiClient get apiClient => _apiClient;

  UserManager get userManager => _userManager;




}