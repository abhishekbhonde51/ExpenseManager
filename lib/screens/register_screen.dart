import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const RegisterScreen());

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 86,
            ),
            Image.asset(
              "Assets/splash.png",
              width: 69.76,
              height: 58.82,
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(40),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 110),
                      child: Text("Create your Account",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Name",
                            labelStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            contentPadding: EdgeInsets.only(left: 30)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Username",
                            labelStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            contentPadding: EdgeInsets.only(left: 30)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Password",
                            labelStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            contentPadding: EdgeInsets.only(left: 30)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 3),
                                blurRadius: 10,
                                color: Color.fromRGBO(0, 0, 0, 0.15))
                          ]),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            labelText: "Confirm Password",
                            labelStyle: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: const Color.fromRGBO(0, 0, 0, 0.4)),
                            contentPadding: const EdgeInsets.only(left: 30)),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 49,
                      width: 280,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Color.fromRGBO(14, 161, 125, 1),
                      ),
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Text(
                            "Already have an account?",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w400,
                                color: const Color.fromRGBO(0, 0, 0, 0.6)),
                          ),
                        ),
                        const SizedBox(
                          width: 2,
                        ),
                        GestureDetector(
                          child: Text("Sign in",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  color:
                                      const Color.fromRGBO(14, 161, 125, 1))),
                        ),

                        // const Spacer()
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
