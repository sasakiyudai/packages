// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

package io.flutter.plugins.camerax;

import androidx.annotation.OptIn;
import androidx.camera.camera2.interop.Camera2CameraInfo;
import androidx.camera.camera2.interop.ExperimentalCamera2Interop;
import androidx.camera.core.CameraInfo;

import android.hardware.camera2.CameraCharacteristics;
import android.hardware.camera2.CameraCharacteristics.Key;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/**
 * ProxyApi implementation for {@link Camera2CameraInfo}.
 * This class may handle instantiating native object instances that are attached to a Dart
 * instance or handle method calls on the associated native class or an instance of that class.
 */
@OptIn(markerClass = ExperimentalCamera2Interop.class)
class Camera2CameraInfoProxyApi extends PigeonApiCamera2CameraInfo {
  Camera2CameraInfoProxyApi(@NonNull ProxyApiRegistrar pigeonRegistrar) {
    super(pigeonRegistrar);
  }

  @NonNull
  @Override
  public Camera2CameraInfo from(@NonNull CameraInfo cameraInfo) {
    return Camera2CameraInfo.from(cameraInfo);
  }

  @NonNull
  @Override
  public String getCameraId(Camera2CameraInfo pigeon_instance) {
    return pigeon_instance.getCameraId();
  }

  @Nullable
  @Override
  public Object getCameraCharacteristic(Camera2CameraInfo pigeon_instance, @NonNull CameraCharacteristics.Key<?> key) {
    return pigeon_instance.getCameraCharacteristic(key);
  }
}
