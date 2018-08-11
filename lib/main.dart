import 'package:flutter/material.dart';
import 'finish.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form Registrasi"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your email address";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Email Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                ),
                TextFormField(
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your full name";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  keyboardType: TextInputType.text
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                ),
                TextFormField(
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your phone number";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  keyboardType: TextInputType.phone,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                ),
                TextFormField(
                  validator: (a) {
                    if (a.isEmpty) {
                      return "Please fill your password";
                    }
                  },
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0)
                    )
                  ),
                  obscureText: true,
                  keyboardType: TextInputType.text
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16.0),
                ),
                RaisedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => new FinishApp()
                      ));
                    }
                  },
                  child: Text("Submit"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
