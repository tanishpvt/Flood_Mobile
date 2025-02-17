import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider extends ChangeNotifier {
  String baseUrl = 'http://localhost:3000';
  static String authenticateUrl = '/api/auth/authenticate';
  static String getCurrentUserDetails = '/api/auth/users';
  static String registerUser = '/api/auth/register';
  static String startTorrentUrl = '/api/torrents/start';
  static String getTorrentListUrl = '/api/torrents';
  static String stopTorrentUrl = '/api/torrents/stop';
  static String getClientSettingsUrl = '/api/client/settings';
  static String setClientSettingsUrl = '/api/client/settings';
  static String addTorrentMagnet = '/api/torrents/add-urls';
  static String addTorrentFile = '/api/torrents/add-files';
  static String deleteTorrent = '/api/torrents/delete';

  // api/torrents/{hash}/contents
  static String getTorrentContent = '/api/torrents/';

  // api/torrents/{hash}/contents/{id}/data?token={jwt token}
  static String playTorrentVideo = '/api/torrents/';
  static String eventsStreamUrl =
      '/api/activity-stream?historySnapshot=FIVE_MINUTE';

  // api/torrents/{hash}/contents
  static String setTorrentContentPriorityUrl = '/api/torrents/';

  Future<void> setBaseUrl(String url) async {
    baseUrl = url;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('baseUrl', url);
    notifyListeners();
  }
}
