import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_brace_in_string_interps

//WARNING: This file is automatically generated. DO NOT EDIT, all your changes would be lost.

typedef LocaleChangeCallback = void Function(Locale locale);

class I18n implements WidgetsLocalizations {
  const I18n();
  static Locale _locale;
  static bool _shouldReload = false;

  static set locale(Locale newLocale) {
    _shouldReload = true;
    I18n._locale = newLocale;
  }

  static const GeneratedLocalizationsDelegate delegate = GeneratedLocalizationsDelegate();

  /// function to be invoked when changing the language
  static LocaleChangeCallback onLocaleChanged;

  static I18n of(BuildContext context) =>
    Localizations.of<I18n>(context, WidgetsLocalizations);

  @override
  TextDirection get textDirection => TextDirection.ltr;

  /// "Email can't be empty"
  String get email_cannot_be_empty => "Email can't be empty";
  /// "Password can't be empty"
  String get password_cannot_be_empty => "Password can't be empty";
  /// "Invalid e-mail"
  String get invalid_email => "Invalid e-mail";
  /// "I've forgotten my password"
  String get forgot_password => "I've forgotten my password";
  /// "Create an account"
  String get create_account => "Create an account";
  /// "E-mail"
  String get email => "E-mail";
  /// "New password"
  String get new_password => "New password";
  /// "Password"
  String get password => "Password";
  /// "Confirm new password"
  String get confirm_new_password => "Confirm new password";
  /// "Confirm password"
  String get confirm_password => "Confirm password";
  /// "Sign In"
  String get sign_in => "Sign In";
  /// "Confirm"
  String get confirm => "Confirm";
  /// "Ok"
  String get ok => "Ok";
  /// "Phone"
  String get phone => "Phone";
  /// "Enter your number"
  String get enter_your_number => "Enter your number";
  /// "Enter the code that was sent by sms"
  String get enter_code_sent_sms => "Enter the code that was sent by sms";
  /// "Send"
  String get send => "Send";
  /// "Resend"
  String get resend => "Resend";
  /// "Code"
  String get code => "Code";
  /// "Failed to create account"
  String get failed_create_account => "Failed to create account";
  /// "Passwords don't match"
  String get passwords_dont_match => "Passwords don't match";
  /// "Failed to check number"
  String get failed_check_number => "Failed to check number";
  /// "E-mail already in use"
  String get email_already_in_use => "E-mail already in use";
  /// "The number is already associated with another user"
  String get number_already_associated => "The number is already associated with another user";
  /// "Current balance"
  String get current_balance => "Current balance";
  /// "Deposit by bank slip"
  String get deposit_by_bank_slip => "Deposit by bank slip";
  /// "Deposit"
  String get deposit => "Deposit";
  /// "Profile"
  String get profile => "Profile";
  /// "Enter your full name"
  String get enter_full_name => "Enter your full name";
  /// "CPF"
  String get cpf => "CPF";
  /// "Date of birth"
  String get date_birth => "Date of birth";
  /// "Mother's name"
  String get mothers_name => "Mother's name";
  /// "Documents"
  String get documents => "Documents";
  /// "document.png"
  String get document_name => "document.png";
  /// "RG document with CPF or CNH"
  String get rg_with_cpf_or_cnh => "RG document with CPF or CNH";
  /// "Send file"
  String get send_file => "Send file";
  /// "Take the picture straight and without the protective plastic. RG with CPF or CNH will be accepted"
  String get information_photo_document => "Take the picture straight and without the protective plastic. RG with CPF or CNH will be accepted";
  /// "Make sure the photo is readable before confirming"
  String get confirm_photo_info => "Make sure the photo is readable before confirming";
  /// "Make sure that the photo is in high resolution and that the document is what was previously sent"
  String get confirm_photo_with_document_info => "Make sure that the photo is in high resolution and that the document is what was previously sent";
  /// "Photo with document"
  String get photo_with_document => "Photo with document";
}

class _I18n_en_US extends I18n {
  const _I18n_en_US();

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class _I18n_pt_BR extends I18n {
  const _I18n_pt_BR();

  /// "E-mail não pode ser vazio"
  @override
  String get email_cannot_be_empty => "E-mail não pode ser vazio";
  /// "Senha não pode ser vazia"
  @override
  String get password_cannot_be_empty => "Senha não pode ser vazia";
  /// "E-mail inválido"
  @override
  String get invalid_email => "E-mail inválido";
  /// "Esqueci minha senha"
  @override
  String get forgot_password => "Esqueci minha senha";
  /// "Criar uma conta"
  @override
  String get create_account => "Criar uma conta";
  /// "E-mail"
  @override
  String get email => "E-mail";
  /// "Nova senha"
  @override
  String get new_password => "Nova senha";
  /// "Senha"
  @override
  String get password => "Senha";
  /// "Confirme a nova senha"
  @override
  String get confirm_new_password => "Confirme a nova senha";
  /// "Confirme a senha"
  @override
  String get confirm_password => "Confirme a senha";
  /// "Entrar"
  @override
  String get sign_in => "Entrar";
  /// "Confirmar"
  @override
  String get confirm => "Confirmar";
  /// "Ok"
  @override
  String get ok => "Ok";
  /// "Telefone"
  @override
  String get phone => "Telefone";
  /// "Informe seu número"
  @override
  String get enter_your_number => "Informe seu número";
  /// "informe o código que foi enviado por sms"
  @override
  String get enter_code_sent_sms => "informe o código que foi enviado por sms";
  /// "Enviar"
  @override
  String get send => "Enviar";
  /// "Reenviar"
  @override
  String get resend => "Reenviar";
  /// "Código"
  @override
  String get code => "Código";
  /// "Falha ao criar conta"
  @override
  String get failed_create_account => "Falha ao criar conta";
  /// "As senhas não correspondem"
  @override
  String get passwords_dont_match => "As senhas não correspondem";
  /// "Falha ao verificar número"
  @override
  String get failed_check_number => "Falha ao verificar número";
  /// "E-mail já em uso"
  @override
  String get email_already_in_use => "E-mail já em uso";
  /// "O número já está associado a outro usuário"
  @override
  String get number_already_associated => "O número já está associado a outro usuário";
  /// "Saldo atual"
  @override
  String get current_balance => "Saldo atual";
  /// "Depósito por boleto"
  @override
  String get deposit_by_bank_slip => "Depósito por boleto";
  /// "Perfil"
  @override
  String get profile => "Perfil";
  /// "Informe seu nome completo"
  @override
  String get enter_full_name => "Informe seu nome completo";
  /// "CPF"
  @override
  String get cpf => "CPF";
  /// "Data de nascimento"
  @override
  String get date_birth => "Data de nascimento";
  /// "Nome da mãe"
  @override
  String get mothers_name => "Nome da mãe";
  /// "Documents"
  @override
  String get documents => "Documents";
  /// "document.png"
  @override
  String get document_name => "document.png";
  /// "Documento RG com CPF ou CNH"
  @override
  String get rg_with_cpf_or_cnh => "Documento RG com CPF ou CNH";
  /// "Enviar arquivo"
  @override
  String get send_file => "Enviar arquivo";
  /// "Tire a foto reta e sem a o plastico de proteção. Serão aceitos RG com CPF ou CNH"
  @override
  String get information_photo_document => "Tire a foto reta e sem a o plastico de proteção. Serão aceitos RG com CPF ou CNH";
  /// "Certifique-se que a foto está legível antes de confirmar"
  @override
  String get confirm_photo_info => "Certifique-se que a foto está legível antes de confirmar";
  /// "Certifique-se de que a foto está em alta resolução e de que o documento é o que foi enviado anteriormente"
  @override
  String get confirm_photo_with_document_info => "Certifique-se de que a foto está em alta resolução e de que o documento é o que foi enviado anteriormente";
  /// "Foto com documento"
  @override
  String get photo_with_document => "Foto com documento";

  @override
  TextDirection get textDirection => TextDirection.ltr;
}

class GeneratedLocalizationsDelegate extends LocalizationsDelegate<WidgetsLocalizations> {
  const GeneratedLocalizationsDelegate();
  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale("en", "US"),
      Locale("pt", "BR")
    ];
  }

  LocaleResolutionCallback resolution({Locale fallback}) {
    return (Locale locale, Iterable<Locale> supported) {
      if (isSupported(locale)) {
        return locale;
      }
      final Locale fallbackLocale = fallback ?? supported.first;
      return fallbackLocale;
    };
  }

  @override
  Future<WidgetsLocalizations> load(Locale locale) {
    I18n._locale ??= locale;
    I18n._shouldReload = false;
    final String lang = I18n._locale != null ? I18n._locale.toString() : "";
    final String languageCode = I18n._locale != null ? I18n._locale.languageCode : "";
    if ("en_US" == lang) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_en_US());
    }
    else if ("pt_BR" == lang) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_pt_BR());
    }
    else if ("en" == languageCode) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_en_US());
    }
    else if ("pt" == languageCode) {
      return SynchronousFuture<WidgetsLocalizations>(const _I18n_pt_BR());
    }

    return SynchronousFuture<WidgetsLocalizations>(const I18n());
  }

  @override
  bool isSupported(Locale locale) {
    for (var i = 0; i < supportedLocales.length && locale != null; i++) {
      final l = supportedLocales[i];
      if (l.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }

  @override
  bool shouldReload(GeneratedLocalizationsDelegate old) => I18n._shouldReload;
}