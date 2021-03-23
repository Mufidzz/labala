class APIRoute {
  final mainUrl = "192.168.1.5:9099";
  static const bool _rs = false;

  //AUTH
  static const _auth = "/auth";
  static APIUri login = new APIUri("$_auth/login", _rs);
  static APIUri register = new APIUri("$_auth/register", _rs);

  static const _product = "/product";

  static APIUri newProduct = new APIUri("$_product/", _rs);
  static APIUri updateProduct({int id}) => new APIUri("$_product/$id", _rs);
  static APIUri deleteProduct({int id}) => new APIUri("$_product/$id", _rs);
}

class APIUri extends APIRoute {
  final String path;
  final bool secure;
  final Map<String, String> urlParams;
  final Map<String, String> urlQueries;

  APIUri(this.path, this.secure, {this.urlParams, this.urlQueries});

  Uri getUri() {
    String newPath = path;
    if (this.urlParams != null) {
      urlParams.forEach((key, value) {
        newPath = newPath.replaceAll(key, value);
      });
    }

    return secure
        ? Uri.https(super.mainUrl, newPath, urlQueries)
        : Uri.http(super.mainUrl, newPath, urlQueries);
  }
}
