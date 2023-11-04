class ProductModel {
  List<String> imageUrls;
  String timeFrame, location, roomMate, price;
  double rating;

  ProductModel({
    required this.price,
    required this.imageUrls,
    required this.timeFrame,
    required this.location,
    required this.roomMate,
    required this.rating,
  });
}

List<ProductModel> products = [
  ProductModel(
    price: '\$42 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Valencia, Spain',
    roomMate: 'Stay with Sagario • Coach',
    rating: 4.87,
  ),
  ProductModel(
    price: '\$50 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Barcelona, Spain',
    roomMate: 'Stay with John • Coach',
    rating: 4.5,
  ),
  ProductModel(
    price: '\$60 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Madrid, Spain',
    roomMate: 'Stay with Maria • Coach',
    rating: 4.3,
  ),
  ProductModel(
    price: '\$70 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Seville, Spain',
    roomMate: 'Stay with Alex • Coach',
    rating: 4.2,
  ),
  ProductModel(
    price: '\$80 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Granada, Spain',
    roomMate: 'Stay with Sofia • Coach',
    rating: 4.1,
  ),
  ProductModel(
    price: '\$90 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Malaga, Spain',
    roomMate: 'Stay with Carlos • Coach',
    rating: 4.0,
  ),
  ProductModel(
    price: '\$100 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Bilbao, Spain',
    roomMate: 'Stay with Ana • Coach',
    rating: 3.9,
  ),
  ProductModel(
    price: '\$110 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'San Sebastian, Spain',
    roomMate: 'Stay with Juan • Coach',
    rating: 3.8,
  ),
  ProductModel(
    price: '\$120 night',
    imageUrls: [
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
      'https://news.airbnb.com/wp-content/uploads/sites/4/2019/06/PJM020719Q202_Luxe_WanakaNZ_LivingRoom_0264-LightOn_R1.jpg?fit=2500%2C1666',
    ],
    timeFrame: 'Nov 13 - 18',
    location: 'Cordoba, Spain',
    roomMate: 'Stay with Pedro • Coach',
    rating: 3.7,
  )
];
