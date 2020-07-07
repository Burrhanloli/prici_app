import 'package:flutter/material.dart';
import 'package:prici_app/pages/login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Theme.of(context).accentColor,
              Theme.of(context).primaryColor,
            ],
            end: Alignment.bottomCenter,
            begin: Alignment.topCenter,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Spacer(flex: 2),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
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
                )),
            Expanded(
                child: Padding(
					padding: const EdgeInsets.all(15.0),
					child: Column(
						mainAxisAlignment: MainAxisAlignment.center,
						crossAxisAlignment: CrossAxisAlignment.stretch,
						children: <Widget>[
							FlatButton(
								onPressed: () {
									Navigator.push(
										context,
										MaterialPageRoute(builder: (context) =>
											LoginPage()),
									);
								},
								textColor: Colors.red,
								color: Colors.white,
								child: const Text('Login'),
							),
							OutlineButton(
								highlightedBorderColor: Colors.white,
								onPressed: () => {},
								textColor: Colors.white,
								borderSide: BorderSide(
									color: Colors.white,
								),
								child: const Text('Register'),
							),
						],
					),
				))
          ],
        ),
      ),
    );
  }
}
