 import 'package:flutter/material.dart';
import 'package:flutter_estore/consts/colors.dart';
import 'package:flutter_estore/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 80),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/images/emptycart.png'),
            ),
          ),
        ),
        Text(
          "Your cart is empty",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Theme.of(context).textSelectionColor,
              fontSize: 36,
              fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            "Looks like you didn\'t add anything to your cart yet",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: themeChange.darkTheme?Theme.of(context).disabledColor: ColorsConsts.subTitle, 
                fontSize: 18,
                fontWeight: FontWeight.w600),
          ),
        ),
        SizedBox(height: 30),
        Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.06,
          child: RaisedButton(
            onPressed: (){

            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: BorderSide(
                color: Colors.red,
              ),
              
            ),
            color: Colors.red,
            child: Text(
              "Shop now",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: themeChange.darkTheme?Theme.of(context).disabledColor: ColorsConsts.subTitle, 
              ),
            ),
          ),
        ),
      ],
    );
  }
}
