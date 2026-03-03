import 'package:flutter/material.dart';
import 'package:myapp/login_successful_screen.dart';

// Class
class LoginScreen extends StatelessWidget {
  // Constructor
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController email = TextEditingController();
    final TextEditingController password = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          width: 340,
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blueAccent,
            // image: DecorationImage(
            //   image: AssetImage("assets/profile_cover.png"),
            //   fit: BoxFit.cover,
            // ),
          ),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20,
            children: [
              Text(
                "Login",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),

              TextField(
                controller: email,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.email_outlined),
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              TextField(
                controller: password,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock_outline),
                  hintText: "Password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Remember me", style: TextStyle(color: Colors.white)),
                  Text("Forgot password?", style: TextStyle(color: Colors.white)),
                ],
              ),

              TextButton(
                style: ButtonStyle(
                  minimumSize: WidgetStateProperty.all(Size(200, 38)),
                  backgroundColor: WidgetStateProperty.all(Colors.deepPurpleAccent),
                  shape: WidgetStateProperty.all(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (BuildContext context) => LoginSuccessfulScreen()),
                  // );
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (BuildContext context) => LoginSuccessfulScreen()),
                  // );
                  if (email.text.isEmpty || password.text.isEmpty) {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Email and password are required")));
                  } else if (email.text.contains("@") && password.text.length > 6) {
                    if (email.text == "admin@gmail.com" && password.text == "thurakhantthein") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => LoginSuccessfulScreen(),
                        ),
                      );
                    } else {
                      ScaffoldMessenger.of(
                        context,
                      ).showSnackBar(SnackBar(content: Text("Email or password are incorrect")));
                    }
                  } else {
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text("Something wen wrong")));
                  }
                },
                child: Text(
                  "Login",
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Text("Dont't have an account? Sign up", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
