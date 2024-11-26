import 'package:employees_agenda/data/datasource/employees_remote_data_source.dart';
import 'package:employees_agenda/data/repository_impl/employee_repository_impl.dart';
import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:employees_agenda/domain/usecase/employee_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  EmployeeUseCase employeeUseCase =
  EmployeeUseCase(EmployeeRepositoryImpl(EmployeesRemoteDataSource()));

  test('Get employees from json server', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    expect(employees.length, 9);
  });

  test('Short Employee By Name', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    List<Employee> shortEmployees = employeeUseCase.getShortEmployees(employees, 'João');
    expect(shortEmployees.length, 1);
  });

  test('Short Employee By Cargo', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    List<Employee> shortEmployees = employeeUseCase.getShortEmployees(employees, 'Front');
    expect(shortEmployees.length, 4);
  });

  test('Short Employee By Admission Date Year', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    List<Employee> shortEmployees = employeeUseCase.getShortEmployees(employees, '2020');
    expect(shortEmployees.length, 5);
  });

  test('Short Employee By Admission Date Mothn', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    List<Employee> shortEmployees = employeeUseCase.getShortEmployees(employees, '05');
    expect(shortEmployees.length, 1);
  });

  test('Short Employee By Admission Date Year', () async {
    List<Employee> employees = await employeeUseCase.getEmployees();
    List<Employee> shortEmployees = employeeUseCase.getShortEmployees(employees, '01');
    expect(shortEmployees.length, 6);
  });
}
