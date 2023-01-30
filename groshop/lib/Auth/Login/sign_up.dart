import 'package:flutter/material.dart';
import 'package:groshop/Auth/login_navigator.dart';
import 'package:groshop/Components/custom_button.dart';
import 'package:groshop/Components/entry_field.dart';
import 'package:groshop/Locale/locales.dart';
import 'package:groshop/Theme/colors.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    var locale = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          locale.register,
          style: TextStyle(color: kMainTextColor),
        ),
        centerTitle: true,
      ),
      body: ListView(
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Spacer(
            flex: 4,
          ),
          EntryField(
            label: locale.fullName,
            hint: locale.enterFullName,
          ),
          EntryField(
            label: locale.emailAddress,
            hint: locale.enterEmailAddress,
          ),
          EntryField(
            label: locale.selectCountry,
            hint: locale.selectCountry,
            suffixIcon: Icons.arrow_drop_down,
          ),
          EntryField(
            label: locale.phoneNumber,
            hint: locale.enterPhoneNumber,
          ),
          Spacer(
            flex: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CustomButton(
              onTap: () =>
                  Navigator.pushNamed(context, SignInRoutes.verification),
            ),
          )
        ],
      ),
    );
  }
}
