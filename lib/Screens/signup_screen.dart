import 'package:flutter/material.dart';
import 'package:flutter_social/Widgets/text_field_input.dart';
import 'package:flutter_social/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController bioController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        width: double.infinity,
        child: Column(
          children: [
            Flexible(flex: 1, child: Container()),
            SvgPicture.asset(
              'assets/ic_instagram.svg',
              height: 54,
              color: primaryColor,
            ),

            Stack(
              children: [
                const CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1562860149-691401a306f8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
                ),
                Positioned(child: IconButton(onPressed: (){}, icon: Icon(Icons.add_a_photo)) , bottom: -8, left: 80),
              ],
            ),
            const SizedBox(height: 20),
            TextFieldInput(
              textEditingController: emailController,
              hintText: 'Enter your email',
              textInputType: TextInputType.text,
            ),
            const SizedBox(height: 20),
            TextFieldInput(
              textEditingController: passwordController,
              hintText: 'Enter your password',
              textInputType: TextInputType.text,
              isPassword: true,
            ),
            const SizedBox(height: 20),
            TextFieldInput(
              textEditingController: bioController,
              hintText: 'Enter your Bio',
              textInputType: TextInputType.text,
              isPassword: false,
            ),
            const SizedBox(height: 20),
            TextFieldInput(
              textEditingController: usernameController,
              hintText: 'Enter your Username',
              textInputType: TextInputType.text,
              isPassword: false,
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {},
              child: Container(
                width: double.infinity,
                height: 50,
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4)),
                    color: blueColor),
                child: const Text("Sign up"),
              ),
            ),
            Flexible(flex: 1, child: Container()),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? ",
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "Log in",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}