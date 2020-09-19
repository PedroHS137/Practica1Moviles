import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_grains.dart';

class ItemGrains extends StatefulWidget {
  final ProductGrains grains;
  ItemGrains({
    Key key,
    @required this.grains,
  }) : super(key: key);

  @override
  _ItemGrainsState createState() => _ItemGrainsState();
}

class _ItemGrainsState extends State<ItemGrains> {
  var x = Icons.favorite;
  Color setColor() {
    if (widget.grains.liked == false) {
      return Colors.white;
    } else {
      return Colors.green;
    }
  }

  @override
  Widget build(BuildContext context) {
    //return Container(child: Text("${widget.drink.productTitle}"));

    _liked() {
      Color color;
      if (widget.grains.liked == false) {
        x = Icons.favorite;
        color = setColor();
        widget.grains.liked = true;
      } else {
        color = setColor();
        x = Icons.favorite_border;
        widget.grains.liked = false;
      }
    }
  }
}
