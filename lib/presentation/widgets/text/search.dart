import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
    required this.onSubmitted,
    required this.onChanged,
  });

  final void Function(String) onSubmitted;
  final void Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: const InputDecoration(
        filled: true,
        fillColor: Color(0xFFf5f5f5),
        hintText: 'Pesquisar',
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Color(0xFFDFDFDF)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Color(0xFFDFDFDF)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          borderSide: BorderSide(color: Color(0xFFDFDFDF)),
        ),
        prefixIcon: Icon(Icons.search),
      ),
      onSubmitted: onSubmitted,
      onChanged: onChanged,
    );
  }
}
