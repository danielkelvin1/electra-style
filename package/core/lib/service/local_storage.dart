import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:kiwi/kiwi.dart';

const FlutterSecureStorage _storage = FlutterSecureStorage();

String _key = 'auth';

Future<String?> read() {
  return _storage.read(key: _key, aOptions: _getAndroidOptions());
}

Future<void> delete() {
  return _storage.delete(key: _key, aOptions: _getAndroidOptions());
}

Future<void> write(String accessToken) {
  return _storage.write(
      key: _key, value: accessToken, aOptions: _getAndroidOptions());
}

AndroidOptions _getAndroidOptions() => const AndroidOptions(
      encryptedSharedPreferences: true,
    );
