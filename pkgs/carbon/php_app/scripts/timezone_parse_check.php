<?php
/**
 * Test script to verify PHP Carbon's behavior for timezone parsing scenarios
 */

require_once __DIR__ . '/../vendor/autoload.php';

use Carbon\Carbon;

echo "=== PHP Carbon Timezone Parsing Behavior ===\n\n";

// Test 1: createFromDateTime with string and timezone (from create_test.dart)
echo "Test 1: createFromDateTime with string input and timezone\n";
echo "Input: '2020-01-05 12:00:00' with timezone 'America/New_York'\n";
$result1 = Carbon::create('2020-01-05 12:00:00', 'America/New_York');
echo "Result timezone: " . $result1->timezoneName . "\n";
echo "Result ISO with offset: " . $result1->toIso8601String() . "\n";
echo "Result hour (local): " . $result1->hour . "\n";
echo "Expected: 2020-01-05T12:00:00.000-05:00\n";
echo "\n";

// Test 2: parse with timezone (from string_methods_test.dart)
echo "Test 2: parse with explicit timezone\n";
echo "Input: '1975-12-25T14:15:16' with timezone '-05:00'\n";
$result2 = Carbon::parse('1975-12-25T14:15:16', '-05:00');
echo "Result timezone: " . $result2->timezoneName . "\n";
echo "Result toIso8601String (UTC): " . $result2->copy()->utc()->toIso8601String() . "\n";
echo "Result hour (local): " . $result2->hour . "\n";
echo "Expected UTC: 1975-12-25T19:15:16.000Z\n";
echo "\n";

// Test 3: parse with timezone - Cookie string test
echo "Test 3: Cookie string format\n";
$result3 = Carbon::parse('1975-12-25T14:15:16', '-05:00');
echo "Input: '1975-12-25T14:15:16' with timezone '-05:00'\n";
echo "toCookieString: " . $result3->toCookieString() . "\n";
echo "Expected: Thursday, 25-Dec-1975 14:15:16 GMT-05:00 (or similar)\n";
echo "\n";

// Test 4: RFC822 format
echo "Test 4: RFC822 format\n";
$result4 = Carbon::parse('1975-12-25T14:15:16', '-05:00');
echo "toRfc822String: " . $result4->toRfc822String() . "\n";
echo "Expected: Thu, 25 Dec 75 14:15:16 -0500\n";
echo "\n";

// Test 5: setToStringFormat test scenario
echo "Test 5: setToStringFormat scenario\n";
$leap = Carbon::parse('1976-12-25T14:15:16');
$normal = Carbon::parse('1975-12-25T14:15:16');
echo "Input (leap): '1976-12-25T14:15:16'\n";
echo "Input (normal): '1975-12-25T14:15:16'\n";
echo "Leap year hour: " . $leap->hour . "\n";
echo "Normal year hour: " . $normal->hour . "\n";
echo "Leap format (jS of F g:i:s a): " . $leap->format('jS \\o\\f F g:i:s a') . "\n";
echo "Normal format (jS of F, Y g:i:s a): " . $normal->format('jS \\o\\f F, Y g:i:s a') . "\n";
echo "Expected leap: 25th of December 7:15:16 pm (if 14:15 -> 7pm in 12h format, but 2:15pm = 2:15:16 pm)\n";
echo "\n";

// Test 6: What happens without timezone
echo "Test 6: Parse without explicit timezone\n";
$noTz = Carbon::parse('1975-12-25T14:15:16');
echo "Input: '1975-12-25T14:15:16' (no timezone)\n";
echo "Result timezone: " . $noTz->timezoneName . "\n";
echo "Result hour: " . $noTz->hour . "\n";
echo "\n";

// Test 7: Parse with Z suffix
echo "Test 7: Parse with Z suffix (UTC)\n";
$withZ = Carbon::parse('1975-12-25T14:15:16Z');
echo "Input: '1975-12-25T14:15:16Z'\n";
echo "Result timezone: " . $withZ->timezoneName . "\n";
echo "Result hour: " . $withZ->hour . "\n";
echo "\n";

// Test 8: Parse with offset in string
echo "Test 8: Parse with offset in string\n";
$withOffset = Carbon::parse('1975-12-25T14:15:16-05:00');
echo "Input: '1975-12-25T14:15:16-05:00'\n";
echo "Result timezone: " . $withOffset->timezoneName . "\n";
echo "Result hour: " . $withOffset->hour . "\n";
echo "Result UTC hour: " . $withOffset->copy()->utc()->hour . "\n";
