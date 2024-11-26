import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:employees_agenda/data/datasource/employees_remote_data_source.dart';
import 'package:employees_agenda/data/model/employee_model.dart';
import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:employees_agenda/domain/reposritory/employee_repository.dart';

class EmployeeRepositoryImpl extends EmployeeRepository {
  final EmployeesRemoteDataSource remoteDataSource;

  EmployeeRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Employee>> getEmployees() async {
    List<Employee> employees = [];
    try {
      Response response = await remoteDataSource.getEmployees();
      if (response.statusCode == 200) {
        var jsonData = jsonDecode(response.data);
        for (var employee in jsonData) {
          employees.add(EmployeeModel.fromMap(employee));
        }
      }
      return employees;
    } on TypeError catch (e) {
      print(e.toString());
      print(e.runtimeType);
      return employees;
    } catch (e) {
      print(e.toString());
      print(e.runtimeType);
      return employees;
    }
  }
}
