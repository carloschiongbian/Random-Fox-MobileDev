class ValidationMixin {

  String password;

  String validateEmail(String value){
    return (value.contains("@")) ? null : "Invalid email format";
  }

  String validateAddress(String value){
    return (value.length >= 10) ? null : "Address field cannot be lesser than 10 characters.";
  }

  String validateName(String value){
    return (value.length >= 3 && value.length <= 10) ? null : "Name field cannot be less than 3 characters and more than 10 characters.";
  }

  String validatePassword(String value){
    this.password = value;
    return (value.length >= 8) ? null : "Invalid password format. Must be at least 8 characters.";
  }

  String validateEstablishment(String value){
    return (value.length < 5) ? null : "Establishment name cannot be less than 5 characters.";
  }

  String confirmPassword(String value){
    if (this.password == value && value.length >= 8) {
      return null;
    } else {
      return "This does not match your chosen password."; 
    }
  }

}
