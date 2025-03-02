import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _aboutController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _usernameController.dispose();
    _aboutController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: SizedBox(
                height: screenSize.height - 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      spacing: 16,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/logo.png",
                          width: screenSize.width * 0.2,
                        ),
                        const Text(
                          'Registration',
                          style: TextStyle(
                            fontSize: 38,
                            fontWeight: FontWeight.w900,
                            color: Color.fromARGB(255, 245, 146, 69),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      spacing: 16,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: screenSize.width * 0.4,
                          height: screenSize.width * 0.4,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Color.fromARGB(255, 245, 146, 69),
                                    width: 5,
                                  ),
                                ),
                              ),
                              Positioned(
                                right: 0,
                                top: screenSize.width / 2 - 90,
                                child: Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color.fromARGB(255, 245, 146, 69),
                                  ),
                                  child: IconButton(
                                    icon: Icon(
                                      Icons.add_a_photo_outlined,
                                      size: 26,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                          controller: _usernameController,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                            ),
                            prefixIcon: Icon(Icons.person),
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
                              return 'Please enter a username';
                            }
                            return null;
                          },
                        ),
                        TextFormField(
                          controller: _aboutController,
                          decoration: const InputDecoration(
                            labelText: 'Contact Number',
                            labelStyle: TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                            ),
                            prefixIcon: Icon(Icons.phone),
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
                        ),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: !_isPasswordVisible,
                          decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: const TextStyle(
                              color: Color.fromARGB(100, 0, 0, 0),
                            ),
                            prefixIcon: const Icon(Icons.lock),
                            prefixIconColor:
                                const Color.fromARGB(155, 245, 146, 69),
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
                            suffixIconColor:
                                const Color.fromARGB(255, 245, 146, 69),
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
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              print('Email: ${_emailController.text}');
                              print('Username: ${_usernameController.text}');
                              print('About: ${_aboutController.text}');
                              print('Password: ${_passwordController.text}');
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            fixedSize: Size(screenSize.width, 58),
                            backgroundColor:
                                const Color.fromARGB(255, 245, 146, 69),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          child: const Text(
                            'Register',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 2,
                      width: screenSize.width,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 245, 146, 69),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: RichText(
                        text: const TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(text: "Already have an account? "),
                            TextSpan(
                              text: "Login",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Text(
                      "By registering you agree to our\nTerms & Privacy Policy",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
