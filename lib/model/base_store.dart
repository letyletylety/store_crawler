class BaseStore {
  static const _scheme = "https";

  static const _landing_host = "";
  static const _request_host = "";

  static const _landing_path = "";
  static const _request_path = "";

  static const List<String> userAgents = [
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)",
    "Mozilla/5.0 (Windows NT 6.1; WOW64; Trident/7.0; rv:11.0) like Gecko",
    "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1)",
  ];

  String? _baseLandingUrl;
  String? _baseRequestUrl;

  String country;
  String appName;
  final String? appId;

  BaseStore({
    required this.country,
    required this.appName,
    this.appId,
  }) {
    _baseLandingUrl = "$_scheme://$_landing_host";
    _baseRequestUrl = "$_scheme://$_request_host";

    country = country.toLowerCase();
    appName = appName.toLowerCase().replaceAll(RegExp(r"[\W_]+"), "-");
  }

  @override
  String toString() {
    const width = 12;
    'Country'.padRight(width, ' ');
    return super.toString();
  }
}
