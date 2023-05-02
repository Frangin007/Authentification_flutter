import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  bool _isSecret = true;
  final _formkey = GlobalKey<FormState>();
  String _password = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed:(){}, 
           ),
          titleSpacing: 0.0,
          elevation: 0,
          backgroundColor:Theme.of(context).scaffoldBackgroundColor,

           ),
           body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
             child: Column(
              children: [
                Text("password".toUpperCase(),
                 style: TextStyle(
                  fontSize: 30.0,
                 ),),
                 SizedBox(
                  height: 50.0 ,
                 ),
              Form(
                 key: _formkey,
                 child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text('Enter your password'),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(
                  onChanged: (value) => setState(() =>_password =value),
                  validator: (value) => _password.length < 6
                  ? 'Au moins 6 caractères requis'
                  :null,
                 
                  obscureText: _isSecret,
                  decoration: InputDecoration(
                    suffixIcon: InkWell(
                      onTap: () =>
                       setState(() => 
                        _isSecret = !_isSecret,
                      ),
                      child: Icon(!_isSecret
                      ?Icons.visibility
                      : Icons.visibility_off,),
                    ),
                  hintText: 'Ex : bgdh@!dhs12',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide  (color: Colors.grey,),
                    ),
                    focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(0.0),
                    borderSide: BorderSide  (color: Colors.grey,),
                    ),
                ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                ElevatedButton(
                
                onPressed : _password.length <6
                ?null
                :(){
                  if (_formkey.currentState != null){
                     _formkey.currentState!.validate();
                    print(_password);
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue, // Couleur de fond du bouton
                  onPrimary: Colors.white, // Couleur du texte du bouton
                  elevation: 0,
                  shape: null,
                  padding: EdgeInsets.symmetric(
                    vertical: 15.0,
                  ),
                ),
                child: Text('Continue'.toUpperCase()),
                ),
              ],
              ),
              ),
              ],
             ),
            ),
            ),
         ),
         );
  }
}