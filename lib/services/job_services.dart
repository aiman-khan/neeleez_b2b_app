import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:neeleez_b2b/app/models/jobs.dart';

import 'endpoints.dart';

class JobServices with Urls {
  Future<List<Jobs>> getAllJobs(int pageNo, int pageSize, String fromDate,
      String toDate,) async {
    try {
      final response = await http.get(
          Uri.parse(
            getJobs(pageNo, pageSize, fromDate, toDate
                ),
          ),
          headers: {
            'Authorization':
                'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6IjIiLCJDb21wYW55SWQiOiIxIiwiQ29tcGFueUxvY2F0aW9uSWQiOiIxIiwiUm9sZUlkIjoiMSIsImh0dHA6Ly9zY2hlbWFzLm1pY3Jvc29mdC5jb20vd3MvMjAwOC8wNi9pZGVudGl0eS9jbGFpbXMvcm9sZSI6IkFkbWluIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6InJhaGVlbCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6InJhaGVlbEB5bWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9uYW1laWRlbnRpZmllciI6IjIiLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL2V4cGlyYXRpb24iOiJBcHIgTW9uIDE3IDIwMjMgMTU6NDk6MDggUE0iLCJuYmYiOjE2NzkxNTQ1NDgsImV4cCI6MTY3OTIyNjU0OCwiaXNzIjoiaHR0cHM6Ly9sb2NhbGhvc3Q6NzAzNiIsImF1ZCI6Imh0dHBzOi8vbG9jYWxob3N0OjcwMzYifQ.BA-BAuK9qtrRAycnSjDFhD9sQd2tHgqAITX_P6XaYxo'
          });
      log(response.body);
      final jsonResponse = json.decode(response.body);

      // if (response.statusCode == 200) {
      //   return List<Map<String, dynamic>>.from(jsonResponse["records"])
      //       .map((e) => Jobs.fromJson(e))
      //       .toList();
      // }
      if (response.statusCode == 200) {
        final records = jsonResponse["records"];
        if (records is List) {
          return records.map((e) => Jobs.fromJson(e)).toList();
        }
        throw MessageException('Invalid response format');
      } else {
        throw MessageException(jsonResponse['message']);
      }
    } on SocketException catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      throw MessageException('No internet connection');
    } on MessageException catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      rethrow;
    } catch (e, stacktrace) {
      if (kDebugMode) {
        print(e);
        print(stacktrace);
      }
      throw MessageException('Something went wrong');
    }
  }
}
