import 'package:employees_agenda/domain/entities/employee.dart';
import 'package:intl/intl.dart';

class EmployeeModel extends Employee {
  const EmployeeModel(
      {required super.id,
      required super.name,
      required super.job,
      required super.admissionDate,
      required super.phone,
      required super.imageUrl});

  factory EmployeeModel.fromMap(Map<String, dynamic> map) {
    DateTime? time = DateTime.tryParse(map['admission_date']);
    String date = "";
    if (time != null) {
      date = DateFormat('dd/MM/yyyy').format(time).toString();
    } else {
      date = "00/00/0000";
    }
    String phone = map['phone'];
    return EmployeeModel(
        id: int.parse(map['id']),
        name: map['name'],
        job: map['job'],
        admissionDate: date,
        phone: '+${phone.substring(0, 2)} ' '(${phone.substring(2, 4)}) ' '${phone.substring(4, 9)}-${phone.substring(9, 13)}',
        imageUrl: map['image']);
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'job': job,
      'admissionDate': admissionDate,
      'phone': phone,
      'imageUrl': imageUrl
    };
  }
}
