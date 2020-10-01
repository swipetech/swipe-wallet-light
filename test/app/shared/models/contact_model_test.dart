import 'package:flutter_test/flutter_test.dart';

import 'package:swipe_app/app/shared/models/bank_account_model.dart';
import 'package:swipe_app/app/shared/models/contact_model.dart';

void main() {
  test('should be all null without parameters', () {
    final contact = ContactModel();
    expect(contact.fullName, null);
    expect(contact.bankAccount, null);
  });

  test('should be all null with parameters', () {
    final contact = ContactModel(fullName: null, bankAccount: null);
    expect(contact.fullName, null);
    expect(contact.bankAccount, null);
  });

  test('should be keep the name and the bankAccount equals', () {
    List data = createNameAndBank();
    String name = data[0];
    BankAccountModel bankAccount = data[1];

    final contact = ContactModel(fullName: name, bankAccount: bankAccount);
    expect(contact.fullName, name);
    expect(contact.bankAccount, bankAccount);
  });

  test('should return a correct file from json', () {
    List data = createNameAndBank();
    String name = data[0];
    BankAccountModel bankAccount = data[1];

    ContactModel contact =
        ContactModel.fromJson({'name': name, 'bankAccount': bankAccount});

    ContactModel validContact = createFilledContact();

    expect(contact, validContact);
  });
}

List createNameAndBank() => [
      "Name",
      BankAccountModel(
        bankCode: '111',
        bankAgency: '40402',
        bankAgencyDigit: '3',
        bankAccount: '393939',
        bankAccountDigit: '9',
        name: 'Name',
        document: '1234567890101',
      )
    ];

ContactModel createFilledContact() {
  List data = createNameAndBank();
  String name = data[0];
  BankAccountModel bankAccount = data[1];

  return ContactModel(fullName: name, bankAccount: bankAccount);
}
