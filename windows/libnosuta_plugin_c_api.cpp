#include "include/libnosuta/libnosuta_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "libnosuta_plugin.h"

void LibnosutaPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  libnosuta::LibnosutaPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
