import 'package:login_register_home/Telegram.dart';
import 'package:login_register_home/register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({Key key}) : super(key: key);

  @override
  State<login> createState() => login_State();
}

class login_State extends State<login> {
  bool ishiddenpassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: ListView(children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.10,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Masuk',
            style: TextStyle(
                fontSize: 24,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'Masukan NIS dan Password ',
            style: TextStyle(
                fontSize: 14, fontFamily: 'Mulish', color: Color(0xFF8A8A8E)),
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: Text(
            'untuk melanjutkan ke halaman berikutnya',
            style: TextStyle(
                fontSize: 14, fontFamily: 'Mulish', color: Color(0xFF8A8A8E)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        Container(
          child: Text(
            'NIS',
            style: TextStyle(
                fontSize: 17, fontFamily: 'Mulish', color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Container(
            height: 51,
            width: 307,
            child: TextField(
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                hintText: "Masukan NIS anda ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.020,
        ),
        Container(
          child: Text(
            'Password',
            style: TextStyle(
                fontSize: 17, fontFamily: 'Mulish', color: Colors.black),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.005,
        ),
        Container(
            height: 51,
            width: 307,
            child: TextField(
              obscureText: ishiddenpassword,
              decoration: InputDecoration(
                suffixIcon: InkWell(
                    onTap: togglePassword, child: Icon(Icons.visibility)),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                hintText: "Masukan Password anda ",
                hintStyle: TextStyle(
                  color: Colors.grey,
                ),
              ),
            )),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.05,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => new Telegram()));
          },
          child: Text(
            "Masuk",
            style: TextStyle(fontFamily: 'Mulish', fontSize: 17),
          ),
          style: ElevatedButton.styleFrom(
            primary: Color(0xFF0041C4),
            fixedSize: Size(307, 52),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.010,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Belum punya akun ?',
              style: TextStyle(
                  fontSize: 14, fontFamily: 'Mulish', color: Color(0xFF8A8A8E)),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new register()));
              },
              child: Text(
                ' Daftar',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Mulish',
                  color: Color(0xFF1C76DE),
                ),
              ),
            )
          ],
        ),
      ]),
    ));
  }

  void togglePassword() {
    setState(() {
      ishiddenpassword = !ishiddenpassword;
    });
  }
}
