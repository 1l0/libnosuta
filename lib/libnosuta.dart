
import 'libnosuta_platform_interface.dart';

class Libnosuta {
  Future<String?> getPlatformVersion() {
    return LibnosutaPlatform.instance.getPlatformVersion();
  }
}
