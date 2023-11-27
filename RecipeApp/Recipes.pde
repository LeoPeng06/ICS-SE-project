class Recipe{
  String recipeName;
  String recipe;
  String recipeInfo;
  String ingredients;
  PImage photo;
  boolean hasIngredients;
  Recipe(String name, String r, String info, String i, PImage p){
    recipeName = name;
    recipe = r;
    recipeInfo = info;
    ingredients = i;
    photo = p;
  }
  //for ingredient check, the ingredients which are all in one String currently
  //must be broken into an array/arraylist in order to check
  //can also do this
  //https://www.geeksforgeeks.org/check-string-substring-another/
  
  void checkIngredients(){
    
  
  }
  
  
}
