//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <libnosuta/libnosuta_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) libnosuta_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "LibnosutaPlugin");
  libnosuta_plugin_register_with_registrar(libnosuta_registrar);
}
