import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lunar_to_islamic_date/lunar_to_islamic_date_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelLunarToIslamicDate platform = MethodChannelLunarToIslamicDate();
  const MethodChannel channel = MethodChannel('lunar_to_islamic_date');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
