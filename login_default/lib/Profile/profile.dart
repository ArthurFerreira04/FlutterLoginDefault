import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String imagePath; 
  final String text;
  final VoidCallback onTap;

  const MenuItem({
    super.key,
    required this.imagePath,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.green,
          child: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset(imagePath), 
          ),
        ),
        title: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        onTap: onTap,
        tileColor: Colors.white.withOpacity(0.05),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 50, 50, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Perfil",
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
                  height: 149,
                  child: Image.asset("images/CamTrade.png"), 
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Nome do usuário",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    MenuItem(
                      imagePath: 'images/change_password.png', 
                      text: 'Alterar senha',
                      onTap: () {
                       
                      },
                    ),
                    MenuItem(
                      imagePath: 'images/help_center.png', 
                      text: 'Central de ajuda',
                      onTap: () {
                      },
                    ),
                    MenuItem(
                      imagePath: 'images/terms_of_use.png', 
                      text: 'Termos de Uso',
                      onTap: () {
                      },
                    ),
                    MenuItem(
                      imagePath: 'images/privacy_policy.png', 
                      text: 'Política de privacidade',
                      onTap: () {
                      },
                    ),
                    MenuItem(
                      imagePath: 'images/contact.png', 
                      text: 'Contato',
                      onTap: () {
                      },
                    ),
                    MenuItem(
                      imagePath: 'images/logout.png', 
                      text: 'Sair',
                      onTap: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}