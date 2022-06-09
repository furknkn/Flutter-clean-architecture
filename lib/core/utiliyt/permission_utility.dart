import 'package:permission_handler/permission_handler.dart';

class PermissionUtil {
  static final PermissionUtil _instance = PermissionUtil._init();
  PermissionUtil._init();

  factory PermissionUtil() {
    return _instance;
  }

//bu kısım diyaloglara göre tekrar düzenlenecek
  Future<PermissionStatus> getPermission(Permission permission) async {
    PermissionStatus permissionStatus = await permission.status;
    if (permissionStatus.isDenied) {
      await openAppSettings();
    } else if (permissionStatus.isDenied) {
      permissionStatus = await permission.request();
    }
    return await permission.status;
  }
}
