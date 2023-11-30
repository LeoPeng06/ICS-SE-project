// Need G4P library
import g4p_controls.*;
boolean test = false;
String nameOfNewRecipe;
String nameOfRecipeCreator;
String listOfRecipeIngredients;

PrintWriter output;

public void setup(){
  size(500, 500);
  createGUI();
  
  SavedLabel.setAlpha(0);
}

public void draw(){
  background(230);
  //frameRate(1);
}

void SaveRecipeToText() {
  if (SaveRecipe.isEnabled()) {
    String[] allIngredients = split(listOfRecipeIngredients, " ");
    String RecipeCode = nameOfNewRecipe+".txt";
    String Ingredients = join(allIngredients, " ");
    
    PrintWriter newRecipe = createWriter(RecipeCode);
    
    String[] FormattedRecipe = new String[5];
    
    FormattedRecipe[0] = "Name of Recipe: "+nameOfNewRecipe;
    FormattedRecipe[1] = "Recipe Creator: "+nameOfRecipeCreator;
    FormattedRecipe[2] = " ";
    FormattedRecipe[3] = "List of Ingredients:";
    FormattedRecipe[4] = Ingredients;
    
    //SaveRecipe.setAlpha(0);
    //RecipeName.setText("");
    //RecipeName.setAlpha(0);
    //CreatersName.setText("");
    //CreatersName.setAlpha(0);
    //IngredientGetter.setText("");
    //IngredientGetter.setAlpha(0);
    
    saveStrings(RecipeCode, FormattedRecipe);
    
    //int frame = 2;
    //int currentFrame = frameCount;
    
    //while (frameCount <= currentFrame+frame) {
      
    //}
    
    //SaveRecipe.setAlpha(1);
    //RecipeName.setAlpha(1);
    //CreatersName.setAlpha(1);
    //IngredientGetter.setAlpha(1);
  }
}
