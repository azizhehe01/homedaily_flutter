import 'package:flutter/material.dart';
import '../../controllers/address_controller.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AddressController _addressController = AddressController();

    return Scaffold(
      appBar: AppBar(title: const Text('Address')),
      body: ListView.builder(
        itemCount: _addressController.addressList.length,
        itemBuilder: (context, index) {
          final address = _addressController.addressList[index];
          return Card(
            child: ListTile(
              title: Text(address.name),
              subtitle: Text(address.details),
              trailing: const Icon(Icons.location_on),
            ),
          );
        },
      ),
    );
  }
}
