// Need G4P library
import g4p_controls.*;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.Dictionary;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.*;

Hashtable<String, ArrayList<String>> dict= new Hashtable<>();
//rename to current directory
int numRecipes = new File("C:/Users/pengl3064/OneDrive - Waterloo Region District School Board/Documents/Processing/ICS-SE-project/RecipeApp").list().length-7;
boolean test = false;
String nameOfNewRecipe;
String nameOfRecipeCreator;
int prepTime;
int cookTime;
String listOfRecipeIngredients;
String ingredientsOwn;
String recipeSteps;
String[] ingredientsOwned;
ArrayList<String> recipeNames = new ArrayList<String>();
ArrayList<String> ingredientsNeeded = new ArrayList<String>();
PrintWriter output;

public void setup(){
  getIngredients();
  println(numRecipes);
  println(dict);
  //println(recipeNames.get(0));
  //println(dict.get(recipeNames.get(0)).size());
 // println(dict.get(recipeNames.get(0)));
  

  //println(ingredientsNeeded);
  size(500, 500, JAVA2D);
  createGUI();
  customGUI();

}

public void draw(){
  
  numRecipes = new File("C:/Users/pengl3064/OneDrive - Waterloo Region District School Board/Documents/Processing/ICS-SE-project/RecipeApp").list().length-7;
 // getIngredients();
  containsIngredients();
  background(255,0,0);
  
  stroke(1);
  textAlign(CENTER);
  textSize(40);
  fill(0);
  text("Recipe App",250,60);
  textSize(20);
  text("enter ingredients here", 320,90);
  
  //try{ println(ingredientsOwned[0]); println(ingredientsOwned[1]);}
  //catch(Exception e){}
   
  
  //frameRate(1);
}

// Use this method to add additional statements
// to customise the GUI controls
public void customGUI(){

}


void SaveRecipeToText() {
 
    String[] allIngredients = split(listOfRecipeIngredients, " ");
    String RecipeCode = String.valueOf(numRecipes)+".txt"; //recipe file name is a number so that it is easy to go through all of them with a for loop
    String Ingredients = join(allIngredients, " ");    
    PrintWriter newRecipe = createWriter(RecipeCode);    
    String[] FormattedRecipe = new String[8];
    
    FormattedRecipe[0] = "Name of Recipe:"+nameOfNewRecipe;
    FormattedRecipe[1] = "Recipe Creator: "+nameOfRecipeCreator;
    FormattedRecipe[2] = " ";
    FormattedRecipe[3] = "List of Ingredients:";
    FormattedRecipe[4] = Ingredients;
    FormattedRecipe[5] = "Preparation Time:" + prepTime;
    FormattedRecipe[6] = "Cooking Time:" + cookTime;
    FormattedRecipe[7] = "Recipe Steps:" + recipeSteps;
       
    saveStrings(RecipeCode, FormattedRecipe);
    println("recipe succesfully saved");
    

}
