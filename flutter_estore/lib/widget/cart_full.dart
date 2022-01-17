import 'package:flutter/material.dart';
import 'package:flutter_estore/consts/colors.dart';
import 'package:flutter_estore/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Container(
      height: 140,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(16), topRight: Radius.circular(16)),
        color: Colors.blue[200],
      ),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0024/9803/5810/products/530254-Product-1-I-637673295149200981_1080x.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(width: 6),
          Flexible(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Iphone 13",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(32.0),
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: 50,
                          child: Icon(
                            Icons.delete,
                            color: Colors.red,
                            size: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Price: "),
                    SizedBox(width: 5),
                    Text(
                      "1300",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text("Sub Total: "),
                    SizedBox(width: 5),
                    Text(
                      "1300",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: themeChange.darkTheme
                            ? Colors.brown.shade900
                            : Theme.of(context).accentColor,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      "Ships Free",
                      style: TextStyle(
                        color: themeChange.darkTheme
                            ? Colors.brown.shade900
                            : Theme.of(context).accentColor,
                      ),
                    ),
                    Spacer(),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(4.0),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            child: Icon(
                              Icons.exposure_minus_1,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Card(
                      elevation: 12,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.11,
                        padding: EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              ColorsConsts.gradiendLStart,
                              ColorsConsts.gradiendLEnd,
                            ],
                            stops: [0.0, 0.7],
                          ),
                        ),
                        child: Text(
                          "1",
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(4.0),
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            child: Icon(
                              Icons.plus_one,
                              color: Colors.red,
                              size: 22,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
