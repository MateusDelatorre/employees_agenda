import 'package:dio/dio.dart';
import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:flutter/foundation.dart';
import 'package:universal_io/io.dart';

class EmployeesRemoteDataSource {
  final Dio dio = Dio();

  late String url;

  EmployeesRemoteDataSource() {
    if (kIsWeb) {
      url = 'http://localhost';
    } else {
      if(Platform.environment.containsKey('FLUTTER_TEST')) {
        url = 'http://localhost';
      }else{
        url = 'http://10.0.2.2';
      }
    }
  }

  Future<Response> getEmployees() {
    return dio.get('$url:3000/employees',
        options: Options(
          responseType: ResponseType.plain,
        ));
  }
}
