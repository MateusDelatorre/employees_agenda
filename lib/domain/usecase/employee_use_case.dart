import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:employees_agenda/domain/reposritory/employee_repository.dart';

class EmployeeUseCase {
  final EmployeeRepository _employeeRepository;

  EmployeeUseCase(this._employeeRepository);

  Future<List<Employee>> getEmployees() async {
    return await _employeeRepository.getEmployees();
  }

  getShortEmployees(List<Employee> employees, String query) {
    return employees.where((element) {
      bool isNameContains =
          element.name.toLowerCase().contains(query.toLowerCase());
      bool isJobContains =
          element.job.toLowerCase().contains(query.toLowerCase());
      bool isPhoneContains =
          element.admissionDate.toLowerCase().contains(query.toLowerCase());
      return isNameContains || isJobContains || isPhoneContains;
    }).toList();
  }
}
