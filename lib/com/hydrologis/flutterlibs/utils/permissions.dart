part of smashlibs;
/*
 * Copyright (c) 2019-2020. Antonello Andrea (www.hydrologis.com). All rights reserved.
 * Use of this source code is governed by a GPL3 license that can be
 * found in the LICENSE file.
 */

enum PERMISSIONS { STORAGE, LOCATION }

class PermissionManager {
  static final PermissionManager _instance = PermissionManager._internal();

  factory PermissionManager() => _instance;

  PermissionManager._internal();

  List<PERMISSIONS> _permissionsToCheck = [];

  PermissionManager add(PERMISSIONS permission) {
    _permissionsToCheck.add(permission);
    return this;
  }

  Future<bool> check() async {
    bool granted = true;
    for (int i = 0; i < _permissionsToCheck.length; i++) {
      if (_permissionsToCheck[i] == PERMISSIONS.STORAGE && !Platform.isIOS) {
        granted = await _checkStoragePermissions();
      } else if (_permissionsToCheck[i] == PERMISSIONS.LOCATION) {
        granted = await _checkLocationPermissions();
      }
    }

    return granted;
  }

  Future<bool> _checkStoragePermissions() async {
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.storage);
    if (permission != PermissionStatus.granted) {
      Logger().w("Storage permission is not granted.");
      Map<PermissionGroup, PermissionStatus> permissionsMap =
          await PermissionHandler()
              .requestPermissions([PermissionGroup.storage]);
      if (permissionsMap[PermissionGroup.storage] != PermissionStatus.granted) {
        Logger().w("Unable to grant permission: ${PermissionGroup.storage}");
        return false;
      }
    }
    Logger().i("Storage permission granted.");
    return true;
  }

  Future<bool> _checkLocationPermissions() async {
    PermissionStatus permission = await PermissionHandler()
        .checkPermissionStatus(PermissionGroup.location);
    if (permission != PermissionStatus.granted) {
      Logger().w("Location permission is not granted.");
      Map<PermissionGroup, PermissionStatus> permissionsMap =
          await PermissionHandler()
              .requestPermissions([PermissionGroup.location]);
      if (permissionsMap[PermissionGroup.location] !=
          PermissionStatus.granted) {
        Logger().w("Unable to grant permission: ${PermissionGroup.location}");
        return false;
      }
    }
    Logger().i("Location permission granted.");
    return true;
  }
}
