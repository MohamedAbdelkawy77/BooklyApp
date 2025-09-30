import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  const Failure({required this.errorMessage});
}

class Serverfailure extends Failure {
  Serverfailure({required super.errorMessage});

  factory Serverfailure.fromDioerror(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return Serverfailure(errorMessage: "Connection timeout Error");

      case DioExceptionType.sendTimeout:
        return Serverfailure(errorMessage: "Send timeout Error");

      case DioExceptionType.receiveTimeout:
        return Serverfailure(errorMessage: "Receive timeout Error");

      case DioExceptionType.badCertificate:
        return Serverfailure(errorMessage: "Bad Certificate Error");

      case DioExceptionType.badResponse:
        return Serverfailure.response(
          error.response?.statusCode ?? 0,
          error.response,
        );

      case DioExceptionType.cancel:
        return Serverfailure(errorMessage: "Request was cancelled");

      case DioExceptionType.connectionError:
        return Serverfailure(errorMessage: "No Internet Connection");

      case DioExceptionType.unknown:
        return Serverfailure(errorMessage: "Unknown Error: ${error.message}");
      default:
        return Serverfailure(
            errorMessage: "Unexpected Error: ${error.message}");
    }
  }

  factory Serverfailure.response(int statuscode, dynamic response) {
    if (statuscode >= 400 && statuscode <= 403) {
      return Serverfailure(errorMessage: response["error"]["message"]);
    } else if (statuscode == 404) {
      return Serverfailure(
          errorMessage: "Your respones not Found please Try Again!");
    } else if (statuscode == 500) {
      return Serverfailure(
          errorMessage: "Internal Server error please Try Again!");
    } else {
      return Serverfailure(errorMessage: "Opps There are ana Error");
    }
  }
}
