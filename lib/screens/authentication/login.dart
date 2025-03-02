import 'package:flutter/material.dart';
import 'package:pet_guardian/screens/authentication/registration.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  spacing: 16,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 245, 146, 69),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Image.asset(
                      "assets/logo.png",
                      width: screenSize.width * 0.5,
                    ),
                  ],
                ),
                Column(
                  spacing: 8,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        hoverColor: Color.fromARGB(255, 245, 146, 69),
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(100, 0, 0, 0),
                        ),
                        prefixIcon: Icon(Icons.email),
                        prefixIconColor: Color.fromARGB(155, 245, 146, 69),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(155, 245, 146, 69),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 146, 69),
                            width: 2,
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      obscureText: !_isPasswordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Color.fromARGB(100, 0, 0, 0),
                        ),
                        prefixIcon: const Icon(Icons.lock),
                        prefixIconColor: Color.fromARGB(155, 245, 146, 69),
                        border: const OutlineInputBorder(),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(155, 245, 146, 69),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 245, 146, 69),
                            width: 2,
                          ),
                        ),
                        suffixIconColor: Color.fromARGB(255, 245, 146, 69),
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your password';
                        }
                        return null;
                      },
                    ),
                    TextButton(
                      onPressed: () {},
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: "Forgot Password ? "),
                            TextSpan(
                              text: "Click Here",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Email: ${_emailController.text}');
                          print('Password: ${_passwordController.text}');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        fixedSize: Size(screenSize.width, 58),
                        backgroundColor: Color.fromARGB(255, 245, 146, 69),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 2,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 146, 69),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => RegistrationScreen(),
                      ),
                    );
                  },
                  child: RichText(
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(text: "Don’t have an account ? "),
                        TextSpan(
                          text: "Create Account",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  "By continue you agree to our\nTerms & Privacy Policy",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
