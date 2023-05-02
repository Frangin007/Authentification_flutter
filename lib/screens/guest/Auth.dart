import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        body: Center(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric( horizontal: 30.0),
            child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan( 
                  text: 'Bienvenue\n'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 30.0,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'page accueil'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,),
                      ),
                  ],
              )
              ),
              SizedBox(
                height: 15.0,
              ),
              Text('Commencez',
              style: TextStyle(fontStyle:FontStyle.italic),
              ),
              SizedBox(
                height: 50.0,
              ),
              
              Form(child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                Text('Entrez votre email'),
                SizedBox(
                  height: 10.0,
                ),
                TextFormField(decoration: InputDecoration(
                  hintText: 'Ex : john.doe@domain.tld',
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
                
                onPressed :(){},
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
          ));
  }
}