class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    this.id,
    this.name,
    this.imageUrl,
    this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'Monkey Luffy',
  imageUrl: 'assets/images/pick0.jpg',
  isOnline: true,
);

// USERS
final User reaves = User(
  id: 1,
  name: 'Keanu Reaves',
  imageUrl: 'assets/images/pick1.jpg',
  isOnline: true,
);
final User scar = User(
  id: 2,
  name: 'Scarlette Johnson',
  imageUrl: 'assets/images/pick2.jpg',
  isOnline: true,
);
final User jason = User(
  id: 3,
  name: 'Jason Mraz',
  imageUrl: 'assets/images/pick3.jpg',
  isOnline: false,
);
final User lee = User(
  id: 4,
  name: 'Jet Lee',
  imageUrl: 'assets/images/pick4.jpg',
  isOnline: false,
);
final User ann = User(
  id: 5,
  name: 'Julian San Jose',
  imageUrl: 'assets/images/pick5.jpg',
  isOnline: true,
);
final User steve = User(
  id: 6,
  name: 'Steve Roger',
  imageUrl: 'assets/images/pick6.jpg',
  isOnline: false,
);
final User eagle = User(
  id: 7,
  name: 'Rodrigo Duterte',
  imageUrl: 'assets/images/pick7.jpg',
  isOnline: false,
);
final User lake = User(
  id: 8,
  name: 'Justine Timberlake',
  imageUrl: 'assets/images/lake.jpg',
  isOnline: false,
);
