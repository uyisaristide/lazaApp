import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ForgetScreen extends StatefulWidget {
  const ForgetScreen({Key? key}) : super(key: key);

  @override
  State<ForgetScreen> createState() => _Screen3State();
}

class _Screen3State extends State<ForgetScreen> {
  bool _toggled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      bottomNavigationBar: BottomAppBar(
        color: const Color(0Xff9775FA),
        child: Container(
            height: 50,
            alignment: Alignment.center,
            child: RaisedButton(
                elevation: 0,
                onPressed: () {},
                color: const Color(0Xff9775FA),
                child: const Text(
                  'Confirm Email',
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ))),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        elevation: 0,
        leading: Container(
          decoration: const BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.all(Radius.circular(50))),
          child: const BackButton(
            color: Color(0xff1D1E20),
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 30),
                height: 400,
                child: Column(
                  children: [
                    const Text(
                      "Forget Password",
                      style: TextStyle(
                          height: 2.0,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0),
                    ),
                    Container(
                      child: Image.asset(
                        "assets/images/cloudLockImage.png",
                        height: 300,
                        width: 500,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(children: [
                  TextFormField(
                    initialValue: "bill.senders@example.com",
                    decoration: const InputDecoration(
                        labelText: "Email Address",
                        suffixIcon: Icon(
                          Icons.check,
                          color: Color(0xff34C358),
                        ),
                        labelStyle:
                            TextStyle(color: Colors.grey, fontSize: 13.0)),
                  ),
                ]),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                margin: const EdgeInsets.only(top: 200, bottom: 0),
                child: const Text(
                  "Please write your email to receive a confirmation code to set a new password",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
