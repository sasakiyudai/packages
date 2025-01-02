// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
// Autogenerated from Pigeon (v22.7.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import, no_leading_underscores_for_local_identifiers
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:camera_android_camerax/src/camerax_library2.g.dart';


class _PigeonCodec extends StandardMessageCodec {
  const _PigeonCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is int) {
      buffer.putUint8(4);
      buffer.putInt64(value);
    }    else if (value is InfoSupportedHardwareLevel) {
      buffer.putUint8(129);
      writeValue(buffer, value.index);
    }    else if (value is AspectRatio) {
      buffer.putUint8(130);
      writeValue(buffer, value.index);
    }    else if (value is CameraStateType) {
      buffer.putUint8(131);
      writeValue(buffer, value.index);
    }    else if (value is LiveDataSupportedType) {
      buffer.putUint8(132);
      writeValue(buffer, value.index);
    }    else if (value is VideoQuality) {
      buffer.putUint8(133);
      writeValue(buffer, value.index);
    }    else if (value is MeteringMode) {
      buffer.putUint8(134);
      writeValue(buffer, value.index);
    }    else if (value is LensFacing) {
      buffer.putUint8(135);
      writeValue(buffer, value.index);
    }    else if (value is CameraXFlashMode) {
      buffer.putUint8(136);
      writeValue(buffer, value.index);
    }    else if (value is ResolutionStrategyFallbackRule) {
      buffer.putUint8(137);
      writeValue(buffer, value.index);
    }    else if (value is AspectRatioStrategyFallbackRule) {
      buffer.putUint8(138);
      writeValue(buffer, value.index);
    }    else if (value is CameraStateErrorCode) {
      buffer.putUint8(139);
      writeValue(buffer, value.index);
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 129: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : InfoSupportedHardwareLevel.values[value];
      case 130: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : AspectRatio.values[value];
      case 131: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : CameraStateType.values[value];
      case 132: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : LiveDataSupportedType.values[value];
      case 133: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : VideoQuality.values[value];
      case 134: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : MeteringMode.values[value];
      case 135: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : LensFacing.values[value];
      case 136: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : CameraXFlashMode.values[value];
      case 137: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : ResolutionStrategyFallbackRule.values[value];
      case 138: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : AspectRatioStrategyFallbackRule.values[value];
      case 139: 
        final int? value = readValue(buffer) as int?;
        return value == null ? null : CameraStateErrorCode.values[value];
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}
