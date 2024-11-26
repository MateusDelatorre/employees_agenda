import 'package:employees_agenda/presentation/employees/widgets/information_line.dart';
import 'package:flutter/material.dart';

class EmployeeExpansionTile extends StatelessWidget {
  const EmployeeExpansionTile({
    super.key,
    required this.admissionDate,
    required this.imageUrl,
    required this.job,
    required this.name,
    required this.phone,
  });

  final String admissionDate;
  final String imageUrl;
  final String job;
  final String name;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Image.network(
              imageUrl,
              height: 20,
              errorBuilder: (context, error, stackTrace) {
                return const Icon(Icons.error);
              },
            ),
          ),
          Flexible(
            child: Text(
              name,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      children: [
        InformationLine(data: job, label: "Cargo"),
        InformationLine(data: admissionDate, label: "Data De admissão"),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
          child: InformationLine(data: phone, label: "Telefone"),
        ),
      ],
    );
  }
}
