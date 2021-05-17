import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final double childAspectRatio;
  final int crossAxisCount;
  final itemBuilder;
  final int itemCount;
  CustomGridView(
      {this.childAspectRatio,
      this.crossAxisCount,
      this.itemBuilder,
      this.itemCount});
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: childAspectRatio,
        crossAxisCount: crossAxisCount,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      itemBuilder: (ctx, index) => itemBuilder(ctx, index),
      itemCount: itemCount,
    );
  }
}
