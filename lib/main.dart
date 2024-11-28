import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expenses.dart';

var kColourScheme = ColorScheme.fromSeed(
  seedColor: const Color.fromARGB(255, 96, 59, 181),
);

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kColourScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColourScheme.onPrimaryContainer,
            foregroundColor: kColourScheme.primaryContainer,

          ),
        ),
        home: const Expenses()),
  );
}
