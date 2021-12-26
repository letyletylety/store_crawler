import 'package:crawler_main/model/base_store.dart';

class AppStore extends BaseStore {
  static const String _landing_host = "apps.apple.com";
  static const String _request_host = "amp-api.apps.apple.com";

  AppStore() : super();

  // final country;
  // final appName;
  // final appId;

  // AppStore({this.country, this.appName, this.appId}) {}
}
