import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:groshop/Auth/login_navigator.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Components/entry_field.dart';
import 'package:groshop/Locale/locales.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          padding: const EdgeInsets.only(top: 28.0, left: 0, right: 0),
          child: ListView(
            shrinkWrap: true,
            // physics: BouncingScrollPhysics(),
            // crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                locale.welcomeTo,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Image.asset(
                  "assets/logo.png",
                  scale: 2,
                  height: 150,
                ),
              ),
              Spacer(
                flex: 3,
              ),
              EntryField(
                label: locale.selectCountry,
                hint: locale.selectCountry,
                suffixIcon: (Icons.arrow_drop_down),
              ),
              EntryField(
                label: locale.phoneNumber,
                hint: locale.enterPhoneNumber,
              ),
              Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: CustomButton(
                  onTap: () => Navigator.pushNamed(context, SignInRoutes.signUp),
                ),
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                locale.wellSendOTPForVerification,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
              Spacer(
                flex: 2,
              ),
              Text(
                locale.orContinueWith,
                textAlign: TextAlign.center,
              ),
              Spacer(
                flex: 1,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        onTap: () => Navigator.pushNamed(context, SignInRoutes.verification),
                        label: 'Facebook',
                        color: Color(0xff3b45c1),
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        onTap: () => Navigator.pushNamed(context, SignInRoutes.signUp),
                        label: 'Google',
                        color: Color(0xffff452c),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Expanded buildFBGoogleButton(BuildContext context, String text, Color color) {
    return Expanded(
        child: TextButton(
            style: TextButton.styleFrom(foregroundColor: color),
            onPressed: () => Navigator.pushNamed(context, SignInRoutes.signUp),
            child: Padding(
              padding: const EdgeInsets.all(14.0),
              child: Text(text,
                  style: TextStyle(
                    color: Theme.of(context).scaffoldBackgroundColor,
                  )),
            )));
  }
}
