import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'lunar_to_islamic_date_platform_interface.dart';

/// An implementation of [LunarToIslamicDatePlatform] that uses method channels.
class MethodChannelLunarToIslamicDate extends LunarToIslamicDatePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('lunar_to_islamic_date');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
