class ChangePasswordProvider {
  String _currentPassword;

  String get currentPassword => _currentPassword;

  set currentPassword(String currentPassword) {
    _currentPassword = currentPassword;
  }

  String _newPassword;

  String get newPassword => _newPassword;

  set newPassword(String newPassword) {
    _newPassword = newPassword;
  }

  Future<void> changePassword(Function callback) async {
    // TODO: Change password
    callback();
  }
}
