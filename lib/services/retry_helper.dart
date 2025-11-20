import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RetryHelper {
  static Future<Map<String, dynamic>> postWithRetry(
    String url,
    Map<String, dynamic> body, {
    int maxRetries = 5,
  }) async {
    int attempt = 0;

    while (attempt < maxRetries) {
      try {
        final response = await http.post(
          Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: jsonEncode(body),
        );

        if (response.statusCode == 200) {
          return jsonDecode(response.body);
        }

        if (response.statusCode == 503) {
          attempt++;
          final delay = Duration(seconds: 1 << attempt);
          print("503 overload. Retry #$attempt in ${delay.inSeconds}s...");
          await Future.delayed(delay);
          continue;
        }

        throw Exception("HTTP ${response.statusCode}: ${response.body}");
      } catch (e) {
        attempt++;
        if (attempt >= maxRetries) {
          throw Exception("Max retries reached. Error: $e");
        }

        final delay = Duration(seconds: 1 << attempt);
        print("Network error: $e. Retry #$attempt in ${delay.inSeconds}s...");
        await Future.delayed(delay);
      }
    }

    throw Exception("Gagal setelah $maxRetries retry.");
  }
}
