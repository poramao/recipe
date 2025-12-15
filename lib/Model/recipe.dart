class Recipe {
  String imgLabel;
  String imageUrl;
  String imagedetail;
  Recipe(this.imgLabel,this.imageUrl,this.imagedetail);

static List<Recipe> samples = 
[
  Recipe('assets/images/goods_09_425213_3x4_11zon.jpg','Sweater Black','Thai fishcakes make a brilliant snack or starter as you can fry them in advance and keep warm in the oven. The easy cucumber pickle adds an extra Thai-style touch.'),
  Recipe('assets/images/goods_09_476351_3x4_11zon.jpg','T-Shirt Black','These corn cakes are quick to whip up and make the best canapés. Using fresh corn makes all the difference. Serve with pickled cucumber.'),
  Recipe('assets/images/goods_39_465193_3x4_11zon.jpg','Sweater Brown','Make your own sweet Thai basil smash cocktail, invented by the folk at Rosas Thai cafe in London. All you need is an egg white, lemon juice, Thai basil, sugar syrup and a lot of booze.'),
  Recipe('assets/images/71a2811c8033bb8ea5ab558e6fa071b7.jpg_720x720q80.jpg','T-Shirt Blue','Massaman curry comes from southern Thailand and is not as fiery as green or red Thai curries. We love the fragrant flavours and the texture that the peanuts add. Check out our best curry ideas, we have plenty.'),
  Recipe('assets/images/item_46_kv.jpg','Sweater Cream','This aubergine Thai jungle curry is low-calorie and ready in just 20 minutes, making a great, satisfying option for midweek.'),
];

}