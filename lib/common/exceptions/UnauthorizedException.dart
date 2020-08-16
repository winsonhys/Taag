import 'package:flutter/material.dart';

class UnauthorizedException implements Exception {
  final String message;
  const UnauthorizedException({@required this.message});

  @override
  String toString() => message;
}
