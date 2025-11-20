import 'dart:convert';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'retry_helper.dart';

class GeminiService {
  static Future<String> sendMessage(String text) async {
    final apiKey = dotenv.env['API_KEY']!;
    final url =
        "https://generativelanguage.googleapis.com/v1beta/models/gemini-2.5-flash:generateContent?key=$apiKey";

    try {
      final result = await RetryHelper.postWithRetry(url, {
        "contents": [
          {
            "parts": [
              {"text": text},
            ],
          },
        ],
      });

      return result["candidates"]?[0]?["content"]?["parts"]?[0]?["text"] ??
          "Tidak ada respons";
    } catch (e) {
      return "Error: $e";
    }
  }
}
