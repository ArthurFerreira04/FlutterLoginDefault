import 'package:flutter/material.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:login_default/login/Widget/button.dart';
import 'package:login_default/login/Widget/text_field.dart';
import 'package:login_default/login/Widget/validators.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final MaskedTextController cpfController = MaskedTextController(mask: '000.000.000-00');
  final MaskedTextController dateOfBirthController = MaskedTextController(mask: '00/00/0000');
  final TextEditingController emailController = TextEditingController();
  final MaskedTextController phoneController = MaskedTextController(mask: '(00) 00000-0000');

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 50, 50, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Text(
                      "Register",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      height: 132,
                      child: Image.asset("images/Cam.png"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nome",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFieldInpute(
                            textEditingController: nameController,
                            hintText: "Nome",
                            icon: Icons.person,
                            validator: Validators.validateName,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "CPF",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFieldInpute(
                            textEditingController: cpfController,
                            hintText: "000.000.000-00",
                            icon: Icons.credit_card,
                            validator: Validators.validateCpf,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Data de nascimento",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFieldInpute(
                            textEditingController: dateOfBirthController,
                            hintText: "00/00/0000",
                            icon: Icons.calendar_today,
                            validator: Validators.validateDateOfBirth,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "E-mail",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFieldInpute(
                            textEditingController: emailController,
                            hintText: "mail@email.com",
                            icon: Icons.email,
                            validator: Validators.validateEmail,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Telefone",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: TextFieldInpute(
                            textEditingController: phoneController,
                            hintText: "(00) 00000-0000",
                            icon: Icons.phone,
                            validator: Validators.validatePhone,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: MyButton(
                      onTab: () {
                        if (_formKey.currentState?.validate() ?? false) {
                        }
                      },
                      text: "Cadastrar",
                    ),
                  ),
                  SizedBox(height: height / 15),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}