import 'package:flutter/material.dart';
import 'package:untitled3/LoginTask/Account.dart';
import 'package:untitled3/LoginTask/Login.dart';
import 'package:untitled3/LoginTask/UserInfo.dart';
class UserInfo extends StatelessWidget{
  var email = TextEditingController();
  var phone = TextEditingController();
  var FullName = TextEditingController();
  var password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Register'),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Register' ,style: TextStyle(
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
              controller: phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'phone',
                hintText: 'enter phone',
                prefixIcon: Icon(Icons.phone),
                suffixIcon: Icon(Icons.phone_android),

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: FullName,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50)
                ),
                labelText: 'Full_Name',
                hintText: 'FullName',
                prefixIcon: Icon(Icons.drive_file_rename_outline),
                suffixIcon: Icon(Icons.drive_file_rename_outline),

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
                MaterialPageRoute(builder:(BuildContext context) => Login()),
              );
            },
                child:Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text ('Sign in'),
                    SizedBox(width: 20),
                    Icon(Icons.app_registration)
                  ],
                ) ,
                color: Colors.yellow,
                elevation: 10,
                minWidth: 200 ),
          ),

        ],
      ),
    );
  }

}



// import 'package:flutter/material.dart';
//
// class User extends StatelessWidget{
//
//   String name,email,phone;
//   User({this.name, this.email, this.phone}) ;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('User Information'),
//       ),
//       body: Column(
//         children: [
//           Text('Name: ${name}'),
//       Text('Email: ${email}'),
//         Text('Phone: ${phone}')
//         ],
//       ),
//     );
//   }
//
// }