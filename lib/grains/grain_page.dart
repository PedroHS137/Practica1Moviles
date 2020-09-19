import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_grains.dart';
import 'item_grain.dart';
import 'item_grain_detail.dart';

class GrainsPage extends StatelessWidget {
  final List<ProductGrains> grainsList;
  GrainsPage({
    Key key,
    @required this.grainsList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Granos"),
      ),
      body: ListView.builder(
        itemCount: grainsList.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemGrains(
            grains: grainsList[index],
          );
        },
      ),
    );
  }
}
