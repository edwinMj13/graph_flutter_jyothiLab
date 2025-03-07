class PersonRankModel {
  final String name;
  final double points;
  final String image;

  // final String ;
  // final String name;
  // final String name;

  PersonRankModel(
      {required this.name, required this.points, required this.image});
}

//getRankedList

List<PersonRankModel> rankModelList = [
  PersonRankModel(
    name: "Edwin Baby",
    points: 100000,
    image: pngAvatars[0],
  ),
  PersonRankModel(
    name: "Alan",
    points: 8500,
    image: pngAvatars[1],
  ),
  PersonRankModel(
    name: "Raj Kapoor",
    points: 6400,
    image: pngAvatars[2],
  ),
  PersonRankModel(
    name: "Mohan Das",
    points: 5609.78,
    image: pngAvatars[3],
  ),
  PersonRankModel(
    name: "Gandhi",
    points: 4908,
    image: pngAvatars[4],
  ),
  PersonRankModel(
    name: "Subramanyan",
    points: 4854.9,
    image: pngAvatars[3],
  ),
  PersonRankModel(
    name: "John",
    points: 3000,
    image: pngAvatars[2],
  ),
  PersonRankModel(
    name: "Mukesh",
    points: 2000,
    image: pngAvatars[1],
  ),
  PersonRankModel(
    name: "Jayaram",
    points: 987,
    image: pngAvatars[0],
  ),
  PersonRankModel(
    name: "John Doe",
    points: 298.7,
    image: pngAvatars[4],
  ),
];
List<String> pngAvatars = [
  "assets/avat_pngs/edwin.png",
  "assets/avat_pngs/alan.png",
  "assets/avat_pngs/raj.png",
  "assets/avat_pngs/mohan.png",
  "assets/avat_pngs/gandhi.png",
];