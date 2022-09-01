import 'package:flutter/material.dart';
import 'package:untitled3/LoginTask/Account.dart';
import 'package:untitled3/LoginTask/UserInfo.dart';
class Login extends StatelessWidget{

  var email = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title : Text('Login'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login' ,style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: email,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'email',
                hintText: 'enter email',
              prefixIcon: Icon(Icons.edit),
                suffixIcon: Icon(Icons.email),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: password,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'Password',
                hintText: 'enter Password',
                prefixIcon: Icon(Icons.remove_red_eye_sharp),
                suffixIcon: Icon(Icons.password_outlined),

              ),
            ),
          ),

          InkWell(
            child: MaterialButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context) => Account(email:email.text,password:password.text)),
              );
            },
              child:Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text ('Login'),
                  SizedBox(width: 20),
                  Icon(Icons.app_registration)
                ],
              ) ,
            color: Colors.yellow,
            elevation: 10,
            minWidth: 200 ),
          ),
          InkWell(
            child: TextButton(onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder:(BuildContext context) =>UserInfo() ),
              );
            },
              child: Text(
                  'no account click here'
              ),),
          ),
        ],
      ),
    );
  }

}