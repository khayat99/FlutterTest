// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  CategoryItem({Key? key, required this.title, required this.imageUrl})
      : super(key: key);
  final String title;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            imageUrl,
            height: 250,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(title, style: Theme.of(context).textTheme.headline6),
          decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(15)),
        ),
      ],
    );
  }
}
