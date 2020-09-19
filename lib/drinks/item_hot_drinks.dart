import 'package:flutter/material.dart';
import 'package:estructura_practica_1/models/product_hot_drinks.dart';
import 'item_hot_drinks_details.dart';

class ItemHotDrinks extends StatefulWidget {
  final ProductHotDrinks drink;
  ItemHotDrinks({
    Key key,
    @required this.drink,
  }) : super(key: key);

  @override
  _ItemHotDrinksState createState() => _ItemHotDrinksState();
}

class _ItemHotDrinksState extends State<ItemHotDrinks> {
  var x = Icons.favorite;
  Color setColor() {
    if (widget.drink.liked == false) {
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
      if (widget.drink.liked == false) {
        color = setColor();
        widget.drink.liked = true;
      } else {
        color = setColor();
        widget.drink.liked = false;
      }
    }

    void _openDrinksDetails() {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) {
            return ItemHotDrinksDetail(
              drink: widget.drink,
            );
          },
        ),
      );
    }

    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10),
          height: 210,
          width: double.maxFinite,
          child: GestureDetector(
            onTap: _openDrinksDetails,
            child: Card(
              elevation: 5.0,
              margin: EdgeInsets.all(8.0),
              color: Theme.of(context).cardColor,
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child: Text(
                              "${widget.drink.productTitle}",
                              style: Theme.of(context).textTheme.title.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          flex: 2,
                        ),
                        Expanded(
                          child: Container(
                            width: 100,
                            child: Text(
                              "＄"
                              "${widget.drink.productPrice}",
                              style: Theme.of(context)
                                  .textTheme
                                  .title
                                  .copyWith(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          flex: 2,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.0),
                        bottomRight: Radius.circular(5.0),
                      ),
                      child: Image.network(
                        "${widget.drink.productImage}",
                        fit: BoxFit.fitHeight,
                        height: 180,
                      ),
                    ),
                    flex: 3,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 150),
                    child: IconButton(
                        icon: Icon(x, color: setColor()),
                        onPressed: () {
                          setState(() {
                            _liked();
                          });
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
