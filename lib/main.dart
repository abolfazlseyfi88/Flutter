import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var textFieldBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: Colors.transparent));
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xff026D8E),
          inputDecorationTheme: InputDecorationTheme(
            contentPadding: EdgeInsets.zero,
            filled: true,
            fillColor: Colors.white,
            enabledBorder: textFieldBorder,
            focusedBorder: textFieldBorder,
          )),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 20, 80),
        child: Center(
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo(1).png',
                height: 150,
                width: 150,
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Login',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                    hintText: 'example@email.com',
                    prefixIcon: _TextFieldIcon(
                      icon: SvgPicture.asset(
                        'assets/images/email.svg',
                        height: 50,
                        width: 50,
                      ),
                    )),
              ),
              const SizedBox(
                height: 40,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: _TextFieldIcon(
                  icon: SvgPicture.asset(
                    'assets/images/lock.svg',
                    height: 50,
                    width: 50,
                  ),
                )),
              ),
              const SizedBox(
                height: 25,
              ),
              const _LoginButton(),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Forgot Password?',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w300,
                  color: Color(0xff020101),
                  decoration: TextDecoration.underline
                ),
              ),
              const SizedBox(height: 25),
              const _OrWidget(),
              const SizedBox(height: 25),
              const _SingUpButton()
            ],
          ),
        ),
      ),
    );
  }
}

class _TextFieldIcon extends StatelessWidget {
  const _TextFieldIcon({required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      padding: const EdgeInsets.all(11),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color(0xffDCDADA)),
      child: icon,
    );
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          content: const Text(
            'Loge In',
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
          backgroundColor: Colors.amber,
        ));
      },
      child: Container(
        height: 45,
        width: MediaQuery.sizeOf(context).width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff04D2FF),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5),
            ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Login',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('assets/images/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}

class _OrWidget extends StatelessWidget {
  const _OrWidget();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2,
            color: Colors.black,
          ),
        ),
        const SizedBox(width: 16,),
        const Text('or' , style: TextStyle(fontSize: 22),),
        const SizedBox(width: 16,),
        Expanded(child:
        Container(
          height: 2, color: Colors.black,
        )
        )
      ],
    );
  }
}

class _SingUpButton extends StatelessWidget{
  const _SingUpButton();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 50,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.43),
                  offset: const Offset(0, 4),
                  blurRadius: 5)
            ],
            border: Border.all(color: const Color(0xff039DC1), width: 5),
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xff026D8E)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Sign Up',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            // SizedBox(width: 5),
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 11.0, horizontal: 4),
              child: SvgPicture.asset('assets/images/enter.svg'),
            )
          ],
        ),
      ),
    );
  }
}