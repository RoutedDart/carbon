import 'package:carbon/carbon.dart';
import 'package:test/test.dart';

void main() {
  setUpAll(() async {
    await Carbon.configureTimeMachine(testing: true);
  });

  test('toHtmlString produces escaped output', () {
    final dt = Carbon.parse('2024-03-03T05:06:07.123456Z');
    final html = dt.toHtmlString();
    expect(html, contains('<time'));
    expect(html, contains('datetime="2024-03-03T05:06:07.123456Z"'));
  });

  test('toHtmlDiffString wraps diff', () {
    final now = Carbon.now();
    final html = now.copy().subMinutes(5).toHtmlDiffString();
    expect(html, contains('<abbr class="Carbon-diff"')); 
    expect(html, contains('ago'));
  });
}
