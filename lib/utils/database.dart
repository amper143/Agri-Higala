import 'package:agri_higala/models/users.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  static const String TABLE_USER = 'user';
  static const String COLUMN_USERNAME = 'username';
  static const String COLUMN_ID = 'id';
  static const String COLUMN_EMAIL = 'email';
  static const String COLUMN_NUMBER = 'number';
  static const String COLUMN_VERIFIY = 'verfiy';
  static const String COLUMN_FIRST = 'first';
  static const String COLUMN_LAST = 'last';
  static const String COLUMN_BIRTHDATE = 'birth';
  static const String COLUMN_GENDER = 'gender';
  static const String COLUMN_BLOCK = 'block';
  static const String COLUMN_BARANGAY = 'barangay';

  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();

  Database _database;

  Future<Database> get database async {
    print('get Database');

    if (_database != null) {
      return _database;
    }

    _database = await createDatabase();

    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();

    return await openDatabase(join(dbPath, 'userDB.db'), version: 1,
        onCreate: (Database database, int version) async {
      print('Creating user table');
      await database.execute("CREATE TABLE $TABLE_USER("
          "$COLUMN_ID INTEGER PRIMARY KEY,"
          "$COLUMN_USERNAME TEXT,"
          "$COLUMN_EMAIL TEXT,"
          "$COLUMN_NUMBER TEXT,"
          "$COLUMN_VERIFIY TEXT,"
          "$COLUMN_FIRST TEXT,"
          "$COLUMN_LAST TEXT,"
          "$COLUMN_GENDER TEXT,"
          "$COLUMN_BIRTHDATE TEXT,"
          "$COLUMN_BLOCK TEXT,"
          "$COLUMN_BARANGAY TEXT,");
    });
  }

  Future<List<User>> getUser() async {
    final db = await database;

    var users = await db.query(TABLE_USER, columns: [
      COLUMN_ID,
      COLUMN_USERNAME,
      COLUMN_EMAIL,
      COLUMN_NUMBER,
      COLUMN_VERIFIY,
      COLUMN_FIRST,
      COLUMN_LAST,
      COLUMN_BIRTHDATE,
      COLUMN_GENDER,
      COLUMN_BLOCK,
      COLUMN_BARANGAY
    ]);

    List<User> userList = List<User>();

    users.forEach((currentUser) {
      User user = User.fromMap(currentUser);

      userList.add(user);
    });
    return userList;
  }

  Future<User> insert(User user) async {
    final db = await database;

    user.id = await db.insert(TABLE_USER, user.toMap());
    return user;
  }
}
