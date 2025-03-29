import 'package:flutter/material.dart';
import 'Home_page.dart';


class LoginScreen extends StatelessWidget {
  final _usernameController=TextEditingController();
  final _passwordController=TextEditingController();
  final _formKey=GlobalKey<FormState>();

  RegExp user_valid=RegExp(r"(@!$%bcefghjklopqrstuvwxyzBCEFGHJKLOPQRSTUVWXYZ[0-9])");
  RegExp pass_valid=RegExp(r"(!$%bcefghjklopqrstuvwxyzBCEFGHJKLOPQRSTUVWXYZ0456789)");


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(16.0),
          child:  Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(height: 40,),
              TextFormField(
                controller: _usernameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                ),
                keyboardType: TextInputType.emailAddress,
                onFieldSubmitted: (value){
                },
                validator: (value) {
                  if (user_valid.hasMatch(value!)){
                  return 'error';
                }else{
                    return null;
                  }
    }
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "password",
                ),
                keyboardType: TextInputType.emailAddress,
                obscureText: true,
                  validator: (value) {
                    if (pass_valid.hasMatch(value!)){
                      return 'error';
                    }else{
                      return null;
                    }
                  }
              ),
              SizedBox(
                height: 20,
              ),

              ElevatedButton.icon(
                onPressed: (){
                if( _formKey.currentState!.validate()) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=>HomePage()));
                }else{
                  showDialog(context: context, builder: (ctx){
                    return AlertDialog(title: Text("Error"),
                      content: Text("username or password incorrect"),
                      actions: [
                        TextButton(onPressed:(){
                          Navigator.of(ctx).pop();
                        },
                          child: Text("close"),),
                      ],);
                  });;
                }   
                },
                icon: Icon(Icons.check),
                label: Text("Login"),),
            ],
                    ),
          ),),
      )
    );
  }

  }


