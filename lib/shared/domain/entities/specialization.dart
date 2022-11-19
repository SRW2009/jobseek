
import 'package:flutter/material.dart';

class Specialization {
  //final int id;
  final IconData image;
  final String title;

  const Specialization(//this.id,
    this.image, this.title);

  const Specialization.none()
      : image = const IconData(0),
        title = '';
}