import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  final String url = "https://api.coinlore.net/api/tickers/";

  Future<List<Map<String, dynamic>>> fetchCrypto() async {
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10));

      if (response.statusCode == 200) {
        final decoded = jsonDecode(response.body);

        // Validasi: Coinlore mengembalikan { "data": [ ... ] }
        if (decoded is Map && decoded["data"] is List) {
          return List<Map<String, dynamic>>.from(
            decoded["data"].map((e) => Map<String, dynamic>.from(e)),
          );
        } else {
          throw Exception("Format API tidak sesuai (data tidak ditemukan)");
        }
      } else {
        throw Exception("HTTP ${response.statusCode}: ${response.reasonPhrase}");
      }
    } catch (e) {
      throw Exception("Gagal mengambil data: $e");
    }
  }
}

