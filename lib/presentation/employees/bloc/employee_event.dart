part of 'employee_bloc.dart';

sealed class EmployeeEvent extends Equatable {
  const EmployeeEvent();
}

class GetEmployees extends EmployeeEvent {
  const GetEmployees();

  @override
  List<Object> get props => [];
}

class ShortEmployees extends EmployeeEvent {
  const ShortEmployees({
    required this.query,
  });

  final String query;

  @override
  List<Object> get props => [query];
}

class UpdateList extends EmployeeEvent {
  const UpdateList({
    required this.query,
  });

  final String query;

  @override
  List<Object> get props => [query];
}
