import 'package:flutter/material.dart';
import 'package:practical/Module3/practical59/screens/register_page.dart';

void main() => runApp(MyLogin());

class MyLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey.shade200,
          appBar: AppBar(
            toolbarHeight: 120,
            backgroundColor: Colors.deepPurple.shade400,
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                   Container(
                     width: double.infinity,
                     height: 100,
                     decoration: BoxDecoration(
                       color: Colors.deepPurple.shade400,
                       borderRadius: BorderRadius.only( bottomLeft: Radius.elliptical(60, 60),),
                     ),

              child: Padding(
                padding: const EdgeInsets.only(bottom: 24.0),
                child: Container(
                  decoration:
                  BoxDecoration(shape: BoxShape.circle,
                      color: Colors.white),
                   child:Icon(
                    Icons.person,
                    size:50,
                  ),
                ),
              ),
            ),
                SizedBox(height: 50,),

                Container(
                  height: 250,
                  child: Padding(
                    padding: const EdgeInsets.all(28),
                    child: Column(
                      children: [
                        TextFormField(

                          decoration: InputDecoration(
                            labelText: 'Email Address',
                            border: OutlineInputBorder(),

                          ),
                          keyboardType: TextInputType.emailAddress,

                        ),
                        SizedBox(height: 12,),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder(),

                          ),
                          keyboardType: TextInputType.text,
                          obscureText: true,

                        ),
                        SizedBox(height: 8,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Text(' Forgot Password?',
                              style: TextStyle(
                                decoration:TextDecoration.underline,
                                color: Colors.red,
                                fontSize: 14,),
                              //textAlign: TextAlign.end,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                Container(
                  width: 200,
                    child:FilledButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyRegister()
                          ),
                        );

                      },
                      // style: FilledButton.styleFrom(
                      //    // padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                      //     backgroundColor: Colors.deepPurple.shade400,
                      //     shape: RoundedRectangleBorder(
                      //         //borderRadius: BorderRadius.circular(10.0)
                      //     )
                      // ),
                      child: Text(
                        "LogIn",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
