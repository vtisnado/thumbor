import 'package:thumbor/src/thumbor_url.dart';

class Thumbor {
  final String host;
  final String key;

  Thumbor({
    required this.host,
    this.key = "",
  }) : assert(host != null) {
    if (host.isEmpty) {
      throw ArgumentError("Host may not be empty");
    }
  }

  ThumborUrl buildImage(String imageUrl) {
    return ThumborUrl(host: host, key: key, imageUrl: imageUrl);
  }
}
