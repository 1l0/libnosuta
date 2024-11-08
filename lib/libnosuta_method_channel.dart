import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'libnosuta_platform_interface.dart';

/// An implementation of [LibnosutaPlatform] that uses method channels.
class MethodChannelLibnosuta extends LibnosutaPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('libnosuta');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
