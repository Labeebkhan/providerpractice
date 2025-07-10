import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerpractice/provider/apopro.dart';

class Apiproscreen extends StatefulWidget {
  const Apiproscreen({super.key});

  @override
  State<Apiproscreen> createState() => _ApiproscreenState();
}

class _ApiproscreenState extends State<Apiproscreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final authProvider = Provider.of<ApiPro>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              fontSize: 26,
            ),
          ),
        ),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: "Email"),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(hintText: "Password"),
            ),

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  authProvider.login(
                    emailController.text.toString(),
                    passwordController.text.toString(),
                  );
                },
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    // if Else ()? if : else
                    child:
                        authProvider.loading
                            ? CircularProgressIndicator(color: Colors.white)
                            : Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                              textAlign: TextAlign.center,
                            ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
