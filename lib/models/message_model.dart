import '../models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool unread;

  Message({
    this.sender,
    this.time,
    this.text,
    this.unread,
  });
}

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: lake,
    time: '5:30 PM',
    text: 'Can I ask? when can I order 20 Kilo of Avocado',
    unread: true,
  ),
  Message(
    sender: lee,
    time: '4:30 PM',
    text: 'When man mo abot ang stock sa melon?',
    unread: true,
  ),
  Message(
    sender: eagle,
    time: '3:30 PM',
    text: 'Wlai discount ani madam daghan man ako paliton',
    unread: false,
  ),
  Message(
    sender: steve,
    time: '2:30 PM',
    text: 'When man ma dliver ang ako order madam?',
    unread: true,
  ),
  Message(
    sender: reaves,
    time: '1:30 PM',
    text: 'Naa bay pakapib ani maam bisag ginag mai?',
    unread: false,
  ),
  Message(
    sender: ann,
    time: '12:30 PM',
    text: 'Mag order unta ko ug 10 kilo na melon krung April 1',
    unread: false,
  ),
  Message(
    sender: scar,
    time: '11:30 AM',
    text: 'when man inyo harvest sa inyo product',
    unread: false,
  ),
  Message(
    sender: jason,
    time: '12:45 AM',
    text: 'Medyo ma delay ang harvest maam.',
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: reaves,
    time: '5:30 PM',
    text: 'Hey dude! Event dead I\'m the hero. Love you 3000 guys.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'We could surely handle this mess much easily if you were here.',
    unread: true,
  ),
  Message(
    sender: reaves,
    time: '3:45 PM',
    text: 'Take care of peter. Give him all the protection & his aunt.',
    unread: true,
  ),
  Message(
    sender: reaves,
    time: '3:15 PM',
    text: 'I\'m always proud of her and blessed to have both of them.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'But that spider kid is having some difficulties due his identity reveal by a blog called daily bugle.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text:
        'Pepper & Morgan is fine. They\'re strong as you. Morgan is a very brave girl, one day she\'ll make you proud.',
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'Yes Tony!',
    unread: true,
  ),
  Message(
    sender: reaves,
    time: '2:00 PM',
    text: 'I hope my family is doing well.',
    unread: true,
  ),
];
