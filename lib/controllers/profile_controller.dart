class ProfileController {
  final String userName = 'Rahma';
  final String userEmail = 'rahma@example.com';

  Map<String, String> getUserProfile() {
    return {'name': userName, 'email': userEmail};
  }

  void updateProfile(String name, String email) {
    // Logic for updating profile
    print('Profile updated: $name, $email');
  }
}
