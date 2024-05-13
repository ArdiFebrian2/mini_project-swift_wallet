import 'package:dio/dio.dart';

class HistoryService {
  final Dio _dio = Dio();
  final String _baseUrl = 'https://fsbowaltjzppxseyogqo.supabase.co/rest/v1/';
  final String _apiKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImZzYm93YWx0anpwcHhzZXlvZ3FvIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTM4Njk2NTEsImV4cCI6MjAyOTQ0NTY1MX0.F3YMV-4B95UsIUsg77PgisgF4WNvE1mkWPqoyOr-EPc';

  Future<Response> getHistory() async {
    var baseUrl = '${_baseUrl}history?select=*&order=id.desc';
    final response = await _dio.get(
      baseUrl,
      options: Options(
        headers: {
          'apikey': _apiKey,
          'Authorization': 'Bearer $_apiKey',
        },
      ),
    );
    return response;
  }
}
