import 'package:flutter/material.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Locale/locales.dart';

import 'my_orders.dart';

class ConfirmOrderPage extends StatefulWidget {
  final VoidCallback onOrderCompleted;

  ConfirmOrderPage(this.onOrderCompleted);

  @override
  _ConfirmOrderPageState createState() => _ConfirmOrderPageState();
}

class _ConfirmOrderPageState extends State<ConfirmOrderPage> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/header.jpg',
                height: 180,
                width: 700,
                fit: BoxFit.fill,
              ),
              IconButton(
                  padding: EdgeInsets.only(top: 58),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    widget.onOrderCompleted();
                  }),
              Positioned.directional(
                  textDirection: Directionality.of(context),
                  top: 60,
                  start: MediaQuery.of(context).size.width / 3.5,
                  child: Text(
                    locale.confirmOrder,
                    style: TextStyle(
                        letterSpacing: 1, fontWeight: FontWeight.w500, fontSize: 18, color: Theme.of(context).scaffoldBackgroundColor),
                  )),
              Positioned.directional(
                top: 100,
                width: MediaQuery.of(context).size.width,
                textDirection: Directionality.of(context),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.white,
                    ),
                    Text(
                      '......',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                    Text(
                      '......',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                    Image.asset(
                      'assets/ic_check.png',
                      height: 22,
                      color: Colors.white,
                    )
                  ],
                ),
              )
            ],
          ),
          Spacer(
            flex: 4,
          ),
          Image.asset(
            'assets/ordercomplete.png',
            scale: 3,
          ),
          Spacer(
            flex: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Text(
              locale.yourOrderHasBeenPlacedSuccessfully,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(
            flex: 1,
          ),
          Text(locale.youCanCheckYourOrderProcessInMyOrdersSection,
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w300, color: Color(0xff646464), letterSpacing: 0.2, fontSize: 16)),
          Spacer(),
          TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.only(top: 20, bottom: 20),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyOrders()));
              },
              child: Text(
                locale.myOrders.toUpperCase(),
                style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18, fontWeight: FontWeight.w500),
              )),
          Spacer(
            flex: 4,
          ),
          CustomButton(
            label: locale.continueShopping,
            onTap: widget.onOrderCompleted,
            /*() {
              Navigator.popAndPushNamed(context, PageRoutes.homePage);
            },*/
          ),
        ],
      ),
    );
  }
}
