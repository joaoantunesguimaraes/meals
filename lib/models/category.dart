import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category {
  // Atributos
  final String id;
  final String title;
  final Color color;

  // Construtor com Parâmetros nomeados
  const Category({
    required this.id, 
    required this.title, 
    this.color = Colors.orange,
    });
}
