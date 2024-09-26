class Validators {
  static String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o seu nome';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o seu e-mail';
    }
    const pattern = r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Insira um e-mail válido';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira sua senha';
    } else if (value.length < 6) {
      return 'A senha deve ter pelo menos 6 caracteres';
    }
    return null;
  }

  static String? validateCpf(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o CPF';
    }
    
    final cleanCpf = value.replaceAll(RegExp(r'[^\d]'), '');
    if (cleanCpf.length != 11) {
      return 'O CPF deve ter 11 dígitos';
    }
    
    const pattern = r'^\d{3}\.\d{3}\.\d{3}-\d{2}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Insira um CPF válido no formato 000.000.000-00';
    }
    return null;
  }

  static String? validateDateOfBirth(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira a data de nascimento';
    }
    const pattern = r'^\d{2}/\d{2}/\d{4}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Insira uma data de nascimento válida no formato dd/mm/aaaa';
    }
    return null;
  }

  static String? validatePhone(String? value) {
    if (value == null || value.isEmpty) {
      return 'Por favor, insira o telefone';
    }

    final cleanPhone = value.replaceAll(RegExp(r'[^\d]'), '');
    if (cleanPhone.length != 11) {
      return 'O telefone deve ter 11 dígitos';
    }

    const pattern = r'^\(\d{2}\) \d{5}-\d{4}$';
    final regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Insira um telefone válido no formato (00) 00000-0000';
    }
    return null;
  }
}