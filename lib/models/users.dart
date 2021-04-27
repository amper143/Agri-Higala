import '../utils/database.dart';

class User {
  int id, verify, number;
  String username, email, first, last, birth, gender, block, barangay;

  User(
      {this.id,
      this.verify,
      this.number,
      this.username,
      this.first,
      this.last,
      this.birth,
      this.gender,
      this.block,
      this.email,
      this.barangay});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseProvider.COLUMN_USERNAME: username,
      DatabaseProvider.COLUMN_VERIFIY: verify,
      DatabaseProvider.COLUMN_EMAIL: email,
      DatabaseProvider.COLUMN_NUMBER: number,
      DatabaseProvider.COLUMN_FIRST: first,
      DatabaseProvider.COLUMN_LAST: last,
      DatabaseProvider.COLUMN_BIRTHDATE: birth,
      DatabaseProvider.COLUMN_GENDER: gender,
      DatabaseProvider.COLUMN_BLOCK: block,
      DatabaseProvider.COLUMN_BARANGAY: barangay
    };
    if (id != null) {
      map[DatabaseProvider.COLUMN_ID] = id;
    }
    return map;
  }

  User.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseProvider.COLUMN_ID];
    username = map[DatabaseProvider.COLUMN_USERNAME];
    verify = map[DatabaseProvider.COLUMN_VERIFIY];
    email = map[DatabaseProvider.COLUMN_EMAIL];
    number = map[DatabaseProvider.COLUMN_NUMBER];
    first = map[DatabaseProvider.COLUMN_FIRST];
    last = map[DatabaseProvider.COLUMN_LAST];
    gender = map[DatabaseProvider.COLUMN_GENDER];
    birth = map[DatabaseProvider.COLUMN_BIRTHDATE];
    block = map[DatabaseProvider.COLUMN_BLOCK];
    barangay = map[DatabaseProvider.COLUMN_BARANGAY];
  }
}
