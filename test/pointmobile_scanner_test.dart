import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pointmobile_scanner/pointmobile_scanner.dart';

void main() {
  const MethodChannel channel = MethodChannel('pointmobile_scanner');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await PointmobileScanner.platformVersion, '42');
  });
}
