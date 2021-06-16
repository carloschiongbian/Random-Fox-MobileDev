class ValidationMixin {

  String password;

  String validateEmail(String value){
    return (value.contains("@")) ? null : "Invalid email format";
  }

  String validatePassword(String value){
    this.password = value;
    return (value.length >= 8) ? null : "Invalid password format. Must be at least 8 characters.";
  }

  String confirmPassword(String value){
    if (this.password == value && value.length >= 8) {
      return null;
    } else {
      return "This does not match your chosen password."; 
    }
  }

}
