import 'package:dio/dio.dart';
import 'package:test/scaffolding.dart';

main() {
  const testAppId = 'com.sgn.pandapop.gp';

  group('common test', () {
    test('uriTest', () {
      String _scheme = 'https';
      String _host = 'play.google.com';
      String _path = 'store/apps/details';
      Uri uri = Uri(
        scheme: _scheme,
        host: _host,
        path: _path,
        queryParameters: {
          'id': testAppId,
          'hl': null ?? 'en',
          'gl': null ?? 'us',
        },
      );
      print(uri.toString());
    });
  });

  group('description', () {
    test('app crawl', () async {
      GPlayApp gPlayApp = await GPlayCrawler.app(appId: 'com.sgn.pandapop.gp');
    });
  });
}

/// Google play crawler
class GPlayCrawler {
  static String _scheme = 'https';
  static String _host = 'play.google.com';
  static String _path = 'store/apps/details';

  static Future<GPlayApp> app({
    required String appId,
    String? lang,
    String? country,
  }) async {
    Uri uri = Uri(
      scheme: _scheme,
      host: _host,
      path: _path,
      queryParameters: {
        'id': appId,
        'hl': lang ?? 'en',
        'gl': country ?? 'us',
      },
    );

    Dio client = Dio();

    try {
      Response response =
          await client.getUri(uri, options: Options(followRedirects: true));
      var body = response.data;

      // only for test
      // File file = await File('./files/android_html').writeAsString(body);

      print(body);
    } on DioError catch (error) {
    } catch (error) {
      throw 'error : $error';
    }
    return GPlayApp();
  }
}

/// The app in Google Play.
class GPlayApp {
  @override
  String toString() {
    return "";
  }
}
