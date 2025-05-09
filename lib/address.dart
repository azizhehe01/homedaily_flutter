import 'package:flutter/material.dart';

class AddressManagementPage extends StatefulWidget {
  const AddressManagementPage({super.key});

  @override
  State<AddressManagementPage> createState() => _AddressManagementPageState();
}

class _AddressManagementPageState extends State<AddressManagementPage> {
  // Daftar alamat (contoh data)
  List<Map<String, String>> addresses = [
    {
      'name': 'Surya Nugraha',
      'phone': '62855659718873',
      'address':
          'Kp. Pangadegan Girang No. 03 Rt/Rw 01/06 Desa Pegelaran Kec Pegelaran Kab Cianjur Jawabarat Indonesia 43266',
      'label': 'Rumah',
      'status': 'Sudah Pinpoint',
    },
    {
      'name': 'Surya Nugraha',
      'phone': '62855659718873',
      'address':
          'Ciganitri Mukti V No.45 Rt06/Rw11 Desa. Cipagalo Kec. Bojongsong Kab. Bandung 40288',
      'label': 'Kos',
      'status': 'Sudah Pinpoint',
    },
    {
      'name': 'Alya Aulla',
      'phone': '628212465780',
      'address':
          'Jl. A Makahanap G14 Komplek Dwikora, Perum Taman Galaksi, Halim Perdana Kusuma',
      'label': 'Rumah',
      'status': '',
    },
  ];

  // Controller untuk form input
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _addressController = TextEditingController();
  final _labelController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    _labelController.dispose();
    super.dispose();
  }

  // Fungsi untuk menampilkan dialog tambah/edit alamat
  void _showAddressDialog({Map<String, String>? address, int? index}) {
    if (address != null) {
      _nameController.text = address['name']!;
      _phoneController.text = address['phone']!;
      _addressController.text = address['address']!;
      _labelController.text = address['label']!;
    } else {
      _nameController.clear();
      _phoneController.clear();
      _addressController.clear();
      _labelController.clear();
    }

    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(address == null ? 'Tambah Alamat' : 'Ubah Alamat'),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: _nameController,
                    decoration: const InputDecoration(labelText: 'Nama'),
                  ),
                  TextField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Nomor Telepon',
                    ),
                  ),
                  TextField(
                    controller: _addressController,
                    decoration: const InputDecoration(
                      labelText: 'Alamat Lengkap',
                    ),
                  ),
                  TextField(
                    controller: _labelController,
                    decoration: const InputDecoration(
                      labelText: 'Label (Rumah/Kos)',
                    ),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Batal'),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    final newAddress = {
                      'name': _nameController.text,
                      'phone': _phoneController.text,
                      'address': _addressController.text,
                      'label': _labelController.text,
                      'status': '',
                    };
                    if (index != null) {
                      addresses[index] = newAddress;
                    } else {
                      addresses.add(newAddress);
                    }
                  });
                  Navigator.pop(context);
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Daftar Alamat',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
        actions: [
          TextButton(
            onPressed: () => _showAddressDialog(),
            child: const Text(
              'Tambah Alamat',
              style: TextStyle(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: 'Cari Alamat',
                hintStyle: const TextStyle(fontFamily: 'Poppins'),
                prefixIcon: const Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey.withOpacity(0.1),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Semua Alamat',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: addresses.length,
              itemBuilder: (context, index) {
                final address = addresses[index];
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                address['label']!,
                                style: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange,
                                ),
                              ),
                              GestureDetector(
                                onTap:
                                    () => _showAddressDialog(
                                      address: address,
                                      index: index,
                                    ),
                                child: const Icon(
                                  Icons.edit,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            address['name']!,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            address['phone']!,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            address['address']!,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 8),
                          if (address['status']!.isNotEmpty)
                            Row(
                              children: [
                                const Icon(
                                  Icons.location_on,
                                  color: Colors.orange,
                                  size: 16,
                                ),
                                const SizedBox(width: 4),
                                Text(
                                  address['status']!,
                                  style: const TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          const SizedBox(height: 10),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed:
                                  () => _showAddressDialog(
                                    address: address,
                                    index: index,
                                  ),
                              style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.grey),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: const Text(
                                'Ubah Alamat',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
