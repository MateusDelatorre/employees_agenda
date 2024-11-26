part of 'employee_bloc.dart';

class EmployeeState extends Equatable {
  const EmployeeState({
    this.employees = const <Employee>[],
    this.shortedEmployees = const <Employee>[],
  });

  final List<Employee> employees;
  final List<Employee> shortedEmployees;

  @override
  List<Object> get props => [employees, shortedEmployees];

  EmployeeState copyWith({
    List<Employee>? employees,
    List<Employee>? shortedEmployees,
  }) {
    return EmployeeState(
      employees: employees ?? this.employees,
      shortedEmployees: shortedEmployees ?? this.shortedEmployees,
    );
  }
}
