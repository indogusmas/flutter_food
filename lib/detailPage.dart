import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String heroTag;
  final String foodName;
  final String foodPrice;

  DetailPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  State<StatefulWidget> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 300.0,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/green.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(100.0),
                        bottomRight: Radius.circular(100.0))),
              ),
              Positioned(
                  top: 50.0,
                  left: (MediaQuery.of(context).size.width / 2) - 125,
                  child: Hero(
                      tag: widget.heroTag,
                      child: Container(
                        height: 250.0,
                        width: 250.0,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.cover)),
                      ))),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                  onPressed: () {},
                ),
              )
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(widget.foodName,
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    Text(
                      '4.9',
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          color: Colors.grey,
                          fontSize: 17),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: Colors.green, size: 16.0),
                    Icon(Icons.star, color: Colors.green, size: 16.0),
                    Icon(Icons.star, color: Colors.green, size: 16.0),
                    Icon(Icons.star, color: Colors.green, size: 16.0),
                    Icon(Icons.star, color: Colors.green, size: 16.0),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      widget.foodPrice,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 17),
                    ),
                    Container(
                      width: 125,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFEDFEE5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.remove_circle_outline,
                                color: Color(0xFF5CB238)),
                            onPressed: () {},
                          ),
                          Text(
                            '3',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20,
                                color: Color(0xFF5CB238)),
                          ),
                          IconButton(
                            icon: Icon(Icons.add_circle,
                                color: Color(0xFF5AC035)),
                            onPressed: () {},
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15.0),
                Text('About the food',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 16.0,
                        color: Colors.black)),
                SizedBox(height: 15.0),
                Container(
                  child: Text(
                    'This light home-cooked food is low salt and low oil with balanced nutrition, selected from high-quality ingredients. This delicious food maybe your best healthy choice.',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 14.0,
                        color: Colors.grey),
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color(0xFF5AC035)),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 17.0,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          '\$84.00',
                          style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
