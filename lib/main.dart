import 'package:employees_agenda/presentation/employees/bloc/employee_bloc.dart';
import 'package:employees_agenda/presentation/employees/view/employees_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          hintColor:const Color(0xFFDFDFDF),
          textTheme: const TextTheme(
            headlineLarge: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1c1c1c)),
            headlineMedium: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Color(0xFF1c1c1c)),
            headlineSmall: TextStyle(
                fontFamily: 'Helvetica',
                fontSize: 16,
                fontWeight: FontWeight.normal,
                color: Color(0xFF1c1c1c)),
          ),
          expansionTileTheme: ExpansionTileThemeData(
            iconColor: const Color(0xFF0500FF),
            collapsedIconColor: const Color(0xFF0500FF),
            shape: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor),
            ),
            collapsedShape: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
          colorScheme: const ColorScheme(
            primary: Color(0xFF0500FF),
            secondary: Colors.blue,
            surface: Colors.white,
            error: Colors.red,
            onPrimary: Colors.white,
            onSecondary: Colors.white,
            onSurface: Colors.black,
            onError: Colors.white,
            brightness: Brightness.light,
          ),
          useMaterial3: true,
        ),
        home: BlocProvider(
            create: (context) => EmployeeBloc()..add(const GetEmployees()),
            child: const EmployeesView()));
  }
}
