// Need G4P library
import g4p_controls.*;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

//Map<String, String> map = new HashMap<String, String>();
int numRecipes = new File("C:/Users/pengl3064/OneDrive - Waterloo Region District School Board/Documents/Processing/idk_rn/data").list().length;
boolean test = false;
String nameOfNewRecipe;
String nameOfRecipeCreator;
int prepTime;
int cookTime;
String listOfRecipeIngredients;
String ingredientsOwn;
String recipeSteps;
String[] ingredientsOwned;
ArrayList<String> ingredientsNeeded = new ArrayList<String>();
PrintWriter output;

public void setup(){
 
  println(numRecipes);

  size(500, 500, JAVA2D);
  createGUI();
  customGUI();
 // listFilesForFolder(folder);
  // Place your setup code here
  //SaveRecipe.setAlpha(0);
}

public void draw(){
  getIngredients();
  containsIngredients();
  background(255);
  stroke(1);
  textAlign(CENTER);
  textSize(100);
  fill(0);
  text("Recipe App",250,100);
  
  //frameRate(1);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}

void getInfoFromText(){

  
}

void SaveRecipeToText() {
 
    String[] allIngredients = split(listOfRecipeIngredients, " ");
    String RecipeCode = String.valueOf(numRecipes)+".txt";
    String Ingredients = join(allIngredients, " ");
    
    PrintWriter newRecipe = createWriter(RecipeCode);
    
    String[] FormattedRecipe = new String[8];
    
    FormattedRecipe[0] = "Name of Recipe: "+nameOfNewRecipe;
    FormattedRecipe[1] = "Recipe Creator: "+nameOfRecipeCreator;
    FormattedRecipe[2] = " ";
    FormattedRecipe[3] = "List of Ingredients:";
    FormattedRecipe[4] = Ingredients;
    FormattedRecipe[5] = "Preparation Time:" + prepTime;
    FormattedRecipe[6] = "Cooking Time:" + cookTime;
    FormattedRecipe[7] = "Recipe Steps:" + recipeSteps;
    
    //SaveRecipe.setAlpha(0);
    //RecipeName.setText("");
    //RecipeName.setAlpha(0);
    //CreatersName.setText("");
    //CreatersName.setAlpha(0);
    //IngredientGetter.setText("");
    //IngredientGetter.setAlpha(0);
    
    saveStrings(RecipeCode, FormattedRecipe);
    println("recipe succesfully saved");
    
    //int frame = 2;
    //int currentFrame = frameCount;
    
    //while (frameCount <= currentFrame+frame) {
      
    //}
    
    //SaveRecipe.setAlpha(1);
    //RecipeName.setAlpha(1);
    //CreatersName.setAlpha(1);
    //IngredientGetter.setAlpha(1);
  
}
