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
  
  boolean checkIngredients(){
    int M = ingredients.length();
    int N = ingredientsOwned.length();
 
        /* A loop to slide pat[] one by one */
        for (int i = 0; i <= N - M; i++) {
            int j;
 
            /* For current index i, check for
            pattern match */
            for (j = 0; j < M; j++)
                if (ingredientsOwned.charAt(i + j) != ingredients.charAt(j))
                    break;
 
            if (j == M)
                return true;
        }
 
        return false;
  }
  
  
}
