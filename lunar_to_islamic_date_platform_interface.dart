import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'lunar_to_islamic_date_method_channel.dart';

abstract class LunarToIslamicDatePlatform extends PlatformInterface {
  /// Constructs a LunarToIslamicDatePlatform.
  LunarToIslamicDatePlatform() : super(token: _token);

  static final Object _token = Object();

  static LunarToIslamicDatePlatform _instance = MethodChannelLunarToIslamicDate();

  /// The default instance of [LunarToIslamicDatePlatform] to use.
  ///
  /// Defaults to [MethodChannelLunarToIslamicDate].
  static LunarToIslamicDatePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LunarToIslamicDatePlatform] when
  /// they register themselves.
  static set instance(LunarToIslamicDatePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
