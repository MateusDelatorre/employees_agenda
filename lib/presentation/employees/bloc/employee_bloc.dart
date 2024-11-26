import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:employees_agenda/data/datasource/employees_remote_data_source.dart';
import 'package:employees_agenda/data/repository_impl/employee_repository_impl.dart';
import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:employees_agenda/domain/usecase/employee_use_case.dart';

part 'employee_event.dart';
part 'employee_state.dart';

class EmployeeBloc extends Bloc<EmployeeEvent, EmployeeState> {
  EmployeeBloc() : super(const EmployeeState()) {
    on<GetEmployees>(_onCreateProject);
    on<ShortEmployees>(_onShortEmployees);
    on<UpdateList>(_onUpdateList);
  }

  EmployeeUseCase employeeUseCase =
      EmployeeUseCase(EmployeeRepositoryImpl(EmployeesRemoteDataSource()));

  _onCreateProject(
    GetEmployees event,
    Emitter<EmployeeState> emit,
  ) async {
    try {
      var response = await employeeUseCase.getEmployees();
      print(response);
      emit(state.copyWith(employees: response, shortedEmployees: response));
    } catch (e) {
      print(e.toString());
    }
  }

  _onShortEmployees(
    ShortEmployees event,
    Emitter<EmployeeState> emit,
  ) async {
    try {
      var response =
          await employeeUseCase.getShortEmployees(state.employees, event.query);
      emit(state.copyWith(shortedEmployees: response));
    } catch (e) {
      print(e.toString());
    }
  }

  _onUpdateList(
    UpdateList event,
    Emitter<EmployeeState> emit,
  ) async {
    try {
      if (event.query.isEmpty) {
        emit(state.copyWith(shortedEmployees: state.employees));
        return;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
