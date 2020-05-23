class ApiResponse<T> {
  bool ok;
  String message;
  T result;

  bool hasError() {
    return !ok;
  }

  ApiResponse.ok(this.result) {
    ok = true;
  }

  ApiResponse.error(this.message) {
    ok = false;
  }
}
