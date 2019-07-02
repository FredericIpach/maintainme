import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Navigation Basics',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      fontFamily: 'lato',
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        title: TextStyle(fontSize: 36.0, ),
        body1: TextStyle(fontSize: 14.0, ),
      ),

    ),
    home: FirstRoute(),
  ));
}

class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Maintain.me'),
      ),
      body: Center(
        child: Column(
    children: <Widget>[


        RaisedButton(
          child: Text('Open route'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          },
        ),
        Text("Registred Users",style: Theme.of(context).textTheme.headline,),

        Text("Have an Account? Sign in now.",style: Theme.of(context).textTheme.body1,),
        RaisedButton(
          onPressed: () {},
          child: const Text(
              'SIGN IN',
              style: TextStyle(fontSize: 20)
          ),),
        Text("New Users",style: Theme.of(context).textTheme.headline,),
        Text("New to MAINTAIN.ME? Create an account to get started today.",style: Theme.of(context).textTheme.body1,),
        Text("Want to try MAINTAIN.ME?",style: Theme.of(context).textTheme.headline,),
        RaisedButton(
            onPressed: () {
              //   Navigator.push(
              //     context,
              //      MaterialPageRoute(builder: (context) => SecondRoute()),
              //    );
            },
            child: const Text(
                'Continue',
                style: TextStyle(fontSize: 20)
            ),


]
        )

      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}