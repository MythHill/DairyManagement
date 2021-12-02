
class UserModel{
  final String name;
  final String address;
  final String dob;
  final int phone;
  final int role;
  final String email;

  UserModel({

    required this.name,
    required this.address,
    required this.dob,
    required this.email,
    required this.phone,
    required this.role,

  
});

factory UserModel.fromJson(Map<String, dynamic> json ){
  return UserModel(
    name: json['name'],
   address: json['address'],
   dob: json['dob'],
   email: json['email'],
   phone: json['phone'],
   role: json['role']);
}
}

