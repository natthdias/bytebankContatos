class Contact {
  final int? accountNumber;
  final String name;

  Contact(
    this.name,
    this.accountNumber,
  );

  @override
  String toString() {
    return 'Contact{name: $name, accountNumber: $accountNumber}';
  }
}
