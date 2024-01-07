import 'package:flutter/material.dart';
import 'package:login/screen/login.dart';


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {

    final Login _login = Login();

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    final TextEditingController userController = TextEditingController();
    
    final TextEditingController userController2 = TextEditingController();
    
    return Scaffold(
      appBar: AppBar(
        title: Text("loguearse"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Container(
        height: height*1,
        width: width*1,
        
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/paisaje2.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.8),
              BlendMode.dstATop,
            )
            
          ),
          
        ),
        
        child: Center(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 60, vertical: 15),
            child: Column(
              children: [
                TextFormField(
                  
                  controller: userController,
                  decoration: InputDecoration(
                    labelText: 'User or email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
            
                TextFormField(
                  controller: userController2,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    alignLabelWithHint: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
                SizedBox(height: 20,),
          
                ElevatedButton(
                  
                  onPressed: () {
                    String user = userController.text;
                    String password = userController2.text;
                    _login.login(user,password);
                    print("response: $user, $password");
                    
                  },
                  child: Text("Enviar"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}