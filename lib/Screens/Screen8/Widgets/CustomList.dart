import 'package:flutter/material.dart';

class CategoriesTitle extends StatefulWidget {
  String title;

  CategoriesTitle({Key? key, required this.title}) : super(key: key);

  @override
  State<CategoriesTitle> createState() => _CategoriesTitleState();
}

class _CategoriesTitleState extends State<CategoriesTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: Text(
                widget.title,textAlign: TextAlign.left,
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20.0,),
              ),
            ),
          ),
          const Expanded(
              child: Text(
            "View all",textAlign: TextAlign.right,
            style: TextStyle(),
          )
          ),
        ],
      ),
    );
  }
}
