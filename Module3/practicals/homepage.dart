import 'package:flutter/material.dart';



class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FilledButton(onPressed: (){
                //   Navigator.push(context,
                //   MaterialPageRoute(
                //       //builder: (context) => practical50(),
                //   ),
                //   );
                // },
                //     child: Text('Practical50'),
                // ),

              ],
            )),
      ),
    );
  }
}
