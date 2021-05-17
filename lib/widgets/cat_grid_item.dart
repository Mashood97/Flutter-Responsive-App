import 'package:flutter/material.dart';

class CategoryGridItem extends StatelessWidget {
  final String title;
  final Color color;
  final String catId;
  final fontsize;
  CategoryGridItem({this.color, this.title, this.catId,this.fontsize=18.0});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(15.0),
      // onTap: () => selectedCategory(context),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: Theme.of(context).textTheme.headline6.copyWith(
                color: Colors.white,
                fontSize: fontsize,
              ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.7),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
    );
  }
}
