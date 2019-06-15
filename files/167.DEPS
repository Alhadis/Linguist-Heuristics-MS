include_rules = [
  "+device/base/features.h",
  "+device/bluetooth",
  "+cc/debug",
  "+cc/output",
  "+cc/paint",
  "+chromeos/cryptohome",
  "+components/account_id",
  "+components/discardable_memory/public",
  "+components/discardable_memory/service/discardable_shared_memory_manager.h",
  "+components/exo",
  "+components/media_message_center",
  "+components/pref_registry",
  "+components/prefs",
  "+components/quirks",
  "+components/session_manager",
  "+components/strings",
  "+components/sync",
  "+components/ui_devtools",
  "+components/user_manager",
  "+components/vector_icons",
  "+components/viz/common",
  "+components/viz/host",
  "+components/wallpaper",
  "+dbus",
  "+extensions/common/constants.h",
  "+gpu/config",
  "+media",
  "+mojo/public",
  "+services/content/public",
  "+services/media_session/public",
  "+services/preferences/public",
  "+services/service_manager/public",
  "+services/viz/public",
  "+skia/ext",
  "+third_party/cros_system_api",
  "+third_party/icu",
  "+third_party/khronos/GLES2",
  "+third_party/re2",
  "+third_party/skia",
  "+net",
  "+ui",
  "-ash/host",

  # Ash components are mini-apps and in general ash should not depend on them.
  # If ash needs to launch a mini-app it can add a deps exception just for the
  # header required to launch the app.
  "-ash/components",

  # Ash sits above content. Exceptions live in //ash/content.
  "-content",

  # Only allow Chrome OS services and D-Bus clients accessible to the mustash
  # ash process.
  "-chromeos",
  "+chromeos/audio",
  "+chromeos/components/multidevice/logging/logging.h",
  "+chromeos/constants",
  # TODO(https://crbug.com/940810): Eliminate this.
  "+chromeos/dbus/initialize_dbus_client.h",
  "+chromeos/dbus/audio",
  "+chromeos/dbus/hammerd",
  # TODO(https://crbug.com/644348): Eliminate this.
  "+chromeos/dbus/power",
  "+chromeos/dbus/power_manager",
  # TODO(https://crbug.com/644355): Eliminate this.
  "+chromeos/dbus/shill",
  "+chromeos/dbus/system_clock",
  # TODO(https://crbug.com/644355): Eliminate this.
  "+chromeos/network",
  "+chromeos/services/assistant/public" ,
  "+chromeos/services/assistant/test_support",
  "+chromeos/services/multidevice_setup/public",
  "+chromeos/services/network_config/public",
  "+chromeos/services/power/public",
  # TODO(https://crbug.com/644361): Eliminate this.
  "+chromeos/settings/timezone_settings.h",
  "+chromeos/strings",
  "+chromeos/system",

  # ui/base/idle depends on SessionManagerClient so disallow it.
  "-ui/base/idle"

  # InputMethodManager lives in the browser process. Use ImeController.
  "-ui/base/ime/chromeos/input_method_manager.h"
]

specific_include_rules = {
  "ash_service\.*": [
    "+chromeos/cryptohome",
  ],
  "login_types\.*": [
    "+chromeos/components/proximity_auth/public/interfaces/auth_type.mojom.h",
  ],
  "message_center_controller\.*": [
    "+components/arc/common/notifications.mojom.h"
  ],
  "policy_recommendation_restorer_unittest.cc": [
    "+components/sync_preferences/testing_pref_service_syncable.h"
  ],
  "root_window_controller\.*": [
    "+ash/host"
  ],
  "shell.cc": [
    "+ash/host/ash_window_tree_host_init_params.h"
  ],
  "window_manager.cc": [
    "+ash/host/ash_window_tree_host.h"
  ],
  "window_service_delegate_impl.cc": [
    "+ash/host/ash_window_tree_host.h"
  ],
}
