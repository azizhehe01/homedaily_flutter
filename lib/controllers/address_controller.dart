import '../models/address_model.dart';

class AddressController {
  final List<AddressModel> addressList = [
    AddressModel(name: 'Home', details: '123 Main Street'),
    AddressModel(name: 'Office', details: '456 Business Road'),
  ];

  void addAddress(AddressModel address) {
    addressList.add(address);
  }

  void removeAddress(AddressModel address) {
    addressList.remove(address);
  }
}
