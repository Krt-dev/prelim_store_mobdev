List placesitems = [
  {"placeImage":  'https://images.unsplash.com/photo-1540202404-a2f29016b523?auto=format&fit=crop&q=80&w=1933&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D', "text": "Feel the Thrill on the \nsurf simulator in Maldives 2022"},
  {"placeImage":  'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Mondstadt.png/revision/latest/scale-to-width-down/1000?cb=20230818202148', "text": "Monstadt - The City of Wind and Freedom."},
  {"placeImage":  'https://static.wikia.nocookie.net/gensin-impact/images/0/03/Liyue.png/revision/latest/scale-to-width-down/1000?cb=20230905083920', "text": "Liyue - The City of Stone and Contracts."},
  {"placeImage":  'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Inazuma.png/revision/latest/scale-to-width-down/1000?cb=20230818202755', "text": "Inazuma - The City of Thunder and Eternity."},
  {"placeImage":  'https://static.wikia.nocookie.net/gensin-impact/images/1/11/Sumeru.png/revision/latest/scale-to-width-down/1000?cb=20221123012821', "text": "Sumeru - The City of Nature and Wisdom."},
  {"placeImage":  'https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Fontaine.png/revision/latest/scale-to-width-down/1000?cb=20230819002539', "text": "Fontaine - The City of Water and Justice."},
];



class Places {
  final int id;
  final String name;
  final double price;
  final String text;
  final String imageLink;

  Places({
    required this.id,
    required this.name,
    required this.price,
    required this.text,
    required this.imageLink,
  });
}

final List<Places> PLACES = [
  Places(
    id: 0,
    name: 'Maldives',
    price: 300.00,
    text: "Feel the Thrill on the \nsurf simulator in Maldives 2022",
    imageLink: 'https://images.unsplash.com/photo-1540202404-a2f29016b523?auto=format&fit=crop&q=80&w=1933&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  ),
  Places(
    id: 1,
    name: 'Monstadt',
    price: 400.00,
    text: "Monstadt - The City of Wind and Freedom.",
    imageLink: 'https://static.wikia.nocookie.net/gensin-impact/images/b/b9/Mondstadt.png/revision/latest/scale-to-width-down/1000?cb=20230818202148',
  ),
  Places(
    id: 2,
    name: 'Liyue',
    price: 500.00,
    text: "Liyue - The City of Stone and Contracts.",
    imageLink: 'https://static.wikia.nocookie.net/gensin-impact/images/0/03/Liyue.png/revision/latest/scale-to-width-down/1000?cb=20230905083920',
  ),
  Places(
    id: 3,
    name: 'Inazuma',
    price: 800.00,
    text: "Inazuma - The City of Thunder and Eternity.",
    imageLink: 'https://static.wikia.nocookie.net/gensin-impact/images/2/2f/Inazuma.png/revision/latest/scale-to-width-down/1000?cb=20230818202755',
  ),
  Places(
    id: 4,
    name: 'Sumeru',
    price: 900.00,
    text: "Sumeru - The City of Nature and Wisdom.",
    imageLink: 'https://static.wikia.nocookie.net/gensin-impact/images/1/11/Sumeru.png/revision/latest/scale-to-width-down/1000?cb=20221123012821',
  ),
  Places(
    id: 5,
    name: 'Fontaine',
    price: 1000.00,
    text: "Fontaine - The City of Water and Justice.",
    imageLink: 'https://static.wikia.nocookie.net/gensin-impact/images/8/8d/Fontaine.png/revision/latest/scale-to-width-down/1000?cb=20230819002539',
  ),
];