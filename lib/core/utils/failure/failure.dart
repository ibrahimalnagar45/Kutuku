import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDiorError(DioException e) {
    if (e.response!.statusCode == 404) {
      return ServerFailure('Your request was not found, please try later');
    } else if (e.response!.statusCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (e.response!.statusCode == 400 ||
        e.response!.statusCode == 401 ||
        e.response!.statusCode == 403) {
      return ServerFailure(e.response!.data['error']['message']);
    } else {
      switch (e.type) {
        case DioExceptionType.connectionTimeout:
          return ServerFailure('Connection timeout with api server');
        case DioExceptionType.sendTimeout:
          return ServerFailure('Send timeout with ApiServer');
        case DioExceptionType.receiveTimeout:
          return ServerFailure('Receive timeout with ApiServer');
        case DioExceptionType.badCertificate:
          return ServerFailure('badCertificate with api server');
        case DioExceptionType.badResponse:
          return ServerFailure.fromResponse(
              e.response!.statusCode!, e.response!.data);
        case DioExceptionType.cancel:
          return ServerFailure('Request to ApiServer was canceled');
        case DioExceptionType.connectionError:
          return ServerFailure('No Internet Connection');
        case DioExceptionType.unknown:
          return ServerFailure('Ops There was an Error, Please try again');
      }
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure('Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure('There is a problem with server, please try later');
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else {
      return ServerFailure('There was an error , please try again');
    }
  }
}
