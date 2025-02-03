import 'dart:convert';

import 'package:fckupFlutter/pages/home/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:fckupFlutter/entities/posts/post_details.dart';
import 'package:fckupFlutter/shared/theme/theme.dart';

import '../../widgets/posts_list/posts_list.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthPage extends StatefulWidget {
    const AuthPage({super.key});
    @override
    State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
    void onLogin(
        BuildContext context,
        String email,
        String password
    ) async {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: email,
            password: password
        );

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HomePage()
            )
        );
    }

    @override
    void initState() {
        super.initState();

    }

    @override
    Widget build(BuildContext context) {

        String email = "";
        String password = "";

        return Scaffold(
            backgroundColor: Colors.amber,
            appBar: AppBar(),
            body: Column(
                children: [
                    TextField(
                        decoration: const InputDecoration(
                            labelText: "Email"
                        ),
                        onChanged: (text) {
                            email = text;
                        }
                    ),
                    TextField(
                        decoration: const InputDecoration(
                            labelText: "Password"
                        ),
                        onChanged: (text) {
                            password = text;
                        }
                    ),
                    GestureDetector(
                        onTap: () {
                            onLogin(
                                context,
                                email,
                                password
                            );
                        },
                        child: const Text(
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.0,
                            ),
                            "Login"
                        )
                    )
                ],
            )
        );
    }
}