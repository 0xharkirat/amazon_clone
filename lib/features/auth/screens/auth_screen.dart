import 'package:amazon_clone/constants/global_variables.dart';
import 'package:flutter/material.dart';

enum Auth {
  signUp,
  signIn,
}

class AuthScreen extends StatefulWidget {

  static const routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  Auth _auth = Auth.signUp;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget> [
              const Text(
                'Welcome',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
              ),
              ListTile(
                title: Text('Create Account.',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signUp,
                  groupValue: _auth,
                  onChanged: (Auth? val){
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),
              ListTile(
                title: Text('Sign In.',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),),
                leading: Radio(
                  activeColor: GlobalVariables.secondaryColor,
                  value: Auth.signIn,
                  groupValue: _auth,
                  onChanged: (Auth? val){
                    setState(() {
                      _auth = val!;
                    });
                  },
                ),
              ),

            ],
          ),
        ),
      ),

    );
  }
}
