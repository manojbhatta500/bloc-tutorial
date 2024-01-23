import 'package:flutter/material.dart';

abstract class ContainerColorState {
  Color bloccolor;
  ContainerColorState({required this.bloccolor});
}

class ContainerInititalColor extends ContainerColorState {
  ContainerInititalColor() : super(bloccolor: Colors.blue);
}

class ContainerRedColor extends ContainerColorState {
  ContainerRedColor(Color givencolor) : super(bloccolor: givencolor);
}

class ContainerYellowColor extends ContainerColorState {
  ContainerYellowColor(Color givencolor) : super(bloccolor: givencolor);
}
