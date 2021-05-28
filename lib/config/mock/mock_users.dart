
class MockUser {
  final String name;
  final int lvl;
  final int win; 
  final int lose;
  final String? image;

  MockUser(this.name, this.lvl, this.win, this.lose, {this.image}); 
}

List<MockUser> mockUsers = <MockUser>[
  MockUser("Jake", 12, 26, 11, image: "assets/side5.jpg"),
  MockUser("Marry", 0, 0, 1, image: "assets/main.jpg"),
  MockUser("Chris", 63, 396, 211, image: "assets/side1.jpg"),
  MockUser("Harry", 2, 6, 8, image: "assets/side2.jpg"),
  MockUser("Jane", 4, 6, 10, image: "assets/side4.jpg"),
  MockUser("Jake", 4, 9, 9, image: "assets/side3.jpg"),
  MockUser("Sara", 5, 12, 13, image: "assets/side8.jpg"),
  MockUser("Hassan", 1, 3, 1, image: "assets/side7.jpg"),
];