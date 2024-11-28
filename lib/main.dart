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
          cardTheme: const CardTheme().copyWith(
            color: kColourScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColourScheme.primaryContainer,
            ),
          ),
          textTheme: ThemeData().textTheme.copyWith(
                titleLarge: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kColourScheme.onSecondaryContainer,
                  fontSize: 16,
                ),
              ),
        ),
        home: const Expenses()),
  );
}
