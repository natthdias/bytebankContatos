import 'package:bytebank_contatos/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: ListView(),
    );
  }
}

class ListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: ListTile(
          title: Text(
            'Alex',
            style: TextStyle(fontSize: 24.0),
          ),
          subtitle: Text(
            '1000',
            style: TextStyle(fontSize: 16.0),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
                MaterialPageRoute(
                  builder: (context) => ContactForm(),
                ),
              )
              .then(
                (newContact) => debugPrint(
                  newContact.toString(),
                ),
              );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
