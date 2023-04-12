class AuthRepo {
  Future getOtpCode(String phoneNumber) async {}

  Future confirmOtpCode({required String phoneNumber, required String otpCode}) async {}

  Future createProfile() async {}

  Future logOut() async {}
}
