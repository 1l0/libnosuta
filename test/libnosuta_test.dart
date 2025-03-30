import 'package:flutter_test/flutter_test.dart';
import 'package:libnosuta/libnosuta.dart';
import 'package:libnosuta/libnosuta_platform_interface.dart';
import 'package:libnosuta/libnosuta_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLibnosutaPlatform
    with MockPlatformInterfaceMixin
    implements LibnosutaPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LibnosutaPlatform initialPlatform = LibnosutaPlatform.instance;

  test('$MethodChannelLibnosuta is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLibnosuta>());
  });

  test('getPlatformVersion', () async {
    Libnosuta libnosutaPlugin = Libnosuta();
    MockLibnosutaPlatform fakePlatform = MockLibnosutaPlatform();
    LibnosutaPlatform.instance = fakePlatform;

    expect(await libnosutaPlugin.getPlatformVersion(), '42');
  });
}
