import 'package:flutter/material.dart';

@immutable
class AppState {
  final bool useDarkMode;

  const AppState({
    required this.useDarkMode,
  });

  factory AppState.initial() => const AppState(
        useDarkMode: false,
      );
      
  AppState copyWith({
    final bool? useDarkMode,
  }) =>
      AppState(
        useDarkMode: useDarkMode ?? this.useDarkMode,
      );

  @override
  bool operator ==(final Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType;

  @override
  int get hashCode =>
      useDarkMode.hashCode;

  @override
  String toString() {
    return 'AppState { '
        'useDarkMode: $useDarkMode, '
        '}';
  }

}