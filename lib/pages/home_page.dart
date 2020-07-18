import 'package:flutter/material.dart';
import 'package:prici_app/pages/login_page.dart';
import 'package:prici_app/pages/signup_page.dart';
import 'package:prici_app/utils/prici_utils.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: linearGradient(
          context,
          end: Alignment.bottomCenter,
          begin: Alignment.topCenter,
        ),
      ),
      child: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (MediaQuery.of(context).orientation == Orientation.portrait)
                  SizedBox(height: MediaQuery.of(context).size.height / 2)
                else
                  const SizedBox(height: 50),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: "prici",
                      child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Prici',
                            style: Theme.of(context)
                                .textTheme
                                .headline3
                                .copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          )),
                    ),
                    Text(
                      'Easiest way',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white),
                    ),
                    Text(
                      'Manage your stock',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
                if (MediaQuery.of(context).orientation == Orientation.portrait)
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1)
                else
                  const SizedBox(height: 30),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      ),
                      textColor: Theme.of(context).primaryColor,
                      color: Colors.white,
                      child: const Text('Login'),
                    ),
                    OutlineButton(
                      highlightedBorderColor: Colors.white,
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpPage()),
                      ),
                      textColor: Colors.white,
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: const Text('Register'),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
