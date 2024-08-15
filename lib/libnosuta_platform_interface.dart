import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'libnosuta_method_channel.dart';

abstract class LibnosutaPlatform extends PlatformInterface {
  /// Constructs a LibnosutaPlatform.
  LibnosutaPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibnosutaPlatform _instance = MethodChannelLibnosuta();

  /// The default instance of [LibnosutaPlatform] to use.
  ///
  /// Defaults to [MethodChannelLibnosuta].
  static LibnosutaPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LibnosutaPlatform] when
  /// they register themselves.
  static set instance(LibnosutaPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
