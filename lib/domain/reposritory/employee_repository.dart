import 'package:employees_agenda/domain/entities/employee.dart';

abstract class EmployeeRepository {
  Future<List<Employee>> getEmployees();
}
