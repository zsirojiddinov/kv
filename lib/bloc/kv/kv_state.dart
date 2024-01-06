import 'package:flutter/material.dart';

@immutable
abstract class KvState {}

class SuccesState extends KvState {}

class ProgressState extends KvState {}
