import 'package:employees_agenda/presentation/employees/bloc/employee_bloc.dart';
import 'package:employees_agenda/presentation/employees/widgets/EmployeeExpansionTile.dart';
import 'package:employees_agenda/presentation/widgets/text/search.dart';
import 'package:employees_agenda/presentation/widgets/text/subtitle_text.dart';
import 'package:employees_agenda/presentation/widgets/text/title_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeesView extends StatelessWidget {
  const EmployeesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFF5F5F5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Center(
              child: Text("CG"),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(CupertinoIcons.bell),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Funcionários",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      BlocBuilder<EmployeeBloc, EmployeeState>(
                          builder: (context, state) {
                        return Search(
                          onSubmitted: (value) {
                            context
                                .read<EmployeeBloc>()
                                .add(ShortEmployees(query: value));
                          },
                          onChanged: (value) {
                            context
                                .read<EmployeeBloc>()
                                .add(UpdateList(query: value));
                          },
                        );
                      }),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BlocBuilder<EmployeeBloc, EmployeeState>(
                    builder: (context, state) {
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                border:  Border.fromBorderSide(
                                    BorderSide(color: Color(0xFFEDEFFB))),
                                color: Colors.grey,
                                borderRadius: BorderRadius.only(
                                  topLeft:  Radius.circular(8),
                                  topRight:  Radius.circular(8),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 0, 10, 0),
                                      child: Text(
                                        "Foto",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineMedium,
                                      ),
                                    ),
                                    Text(
                                      "Nome",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineMedium,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            ListView.builder(
                              shrinkWrap: true,
                              primary: false,
                              itemCount: state.shortedEmployees.length,
                              itemBuilder: (context, index) {
                                return EmployeeExpansionTile(
                                  admissionDate:
                                      state.shortedEmployees[index].admissionDate,
                                  imageUrl:
                                      state.shortedEmployees[index].imageUrl,
                                  job: state.shortedEmployees[index].job,
                                  name: state.shortedEmployees[index].name,
                                  phone: state.shortedEmployees[index].phone,
                                );
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ])),
            ],
          ),
        ));
  }
}
