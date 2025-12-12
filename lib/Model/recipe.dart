class Recipe {
  String imgLabel;
  String imageUrl;
  String imagedetail;
  Recipe(this.imgLabel,this.imageUrl,this.imagedetail);

static List<Recipe> samples = 
[
  Recipe('assets/images/2358.webp','Thai-style fishcakes with sweet and sour cucumber pickle','Thai fishcakes make a brilliant snack or starter as you can fry them in advance and keep warm in the oven. The easy cucumber pickle adds an extra Thai-style touch.'),
  Recipe('assets/images/2768.webp','Thai-style corn cakes with pickled cucumbers','These corn cakes are quick to whip up and make the best canapés. Using fresh corn makes all the difference. Serve with pickled cucumber.'),
  Recipe('assets/images/3910.webp','Sweet Thai basil smash cocktail','Make your own sweet Thai basil smash cocktail, invented by the folk at Rosas Thai cafe in London. All you need is an egg white, lemon juice, Thai basil, sugar syrup and a lot of booze.'),
  Recipe('assets/images/4460.webp','Prawn massaman curry','Massaman curry comes from southern Thailand and is not as fiery as green or red Thai curries. We love the fragrant flavours and the texture that the peanuts add. Check out our best curry ideas, we have plenty.'),
  Recipe('assets/images/24561.webp','Aubergine Thai jungle curry','This aubergine Thai jungle curry is low-calorie and ready in just 20 minutes, making a great, satisfying option for midweek.'),
];

}