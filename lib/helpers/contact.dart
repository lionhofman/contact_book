// Tabela com id, name, email,                phone,    img
//            5454 NameOfUser user@user.com  333333    /images/
import 'package:contact_book/helpers/contact_helper.dart';

class Contact {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? img;

  Contact.fromMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }
  Map<String, dynamic> toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img,
    };
    if (id != null) {
      map[idColumn] = id;
    }
    return map;
  }

  Contact({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.img,
  });

  @override
  String toString() {
    return "Contact(id:$id, name: $name, email:$email, phone:$phone, img: $img)";
  }
}
