class UResponseErrorMessage {
  static String login(int statusCode) {
    switch (statusCode) {
      case 200:
        {
          return "No Error";
        }
      case 401:
        {
          return "Email / Password Salah";
        }
      case 500:
        {
          return "Server Error";
        }
      default:
        {
          return "Unidentified";
        }
    }
  }
}
