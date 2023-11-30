
// Need G4P library
import g4p_controls.*;
boolean test = false;
String nameOfNewRecipe;
String nameOfRecipeCreator;
String listOfRecipeIngredients;

ArrayList<Recipes> recipes;
String userInput = "";
PrintWriter output;

public void setup(){
  size(500, 500);
  createGUI();
  recipes = new ArrayList<Recipes>();
  SavedLabel.setAlpha(0);
}

public void draw(){
  background(255);
  buildRecipe();
  displayRecipes();
  displayInputField();
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
    //RecipeName.setText(null);
    //RecipeName.setAlpha(0);
    //CreatersName.setText(null);
    //CreatersName.setAlpha(0);
    //RecipeName.setText(null);
    //RecipeName.setAlpha(0);
    //RecipeName.setText(null);
    //RecipeName.setAlpha(0);
    
    saveStrings(RecipeCode, FormattedRecipe);
  }
}



void displayRecipes() {
  textAlign(LEFT);
  textSize(16);
  fill(0);

  for (int i = 0; i < recipes.size(); i++) {
    Recipes recipe = recipes.get(i);
    text(recipe.toString(), 20, 30 + i * 80);
  }
}

void displayInputField() {
  textAlign(LEFT);
  textSize(16);
  fill(0);
  text("Enter ingredients and press Enter:", 20, height - 30);
  text(userInput, 20, height - 10);
}

void keyPressed() {
  if (keyCode == ENTER) {
    String input = trim(userInput);
    
    if (input.length() > 0) {
      if (input.equals("build")) {
        buildRecipe();
      } else {
        findRecipe(input);
      }
    }
    
    userInput = "";
  } else if (keyCode == BACKSPACE) {
    if (userInput.length() > 0) {
      userInput = userInput.substring(0, userInput.length() - 1);
    }
  } else {
    userInput += key;
  }
}

void buildRecipe() {

  int enterCount = 0; // counter enters and use keypresed function to do this I think

  String recipeName = input("Enter recipe name:");
  String ingredients = input("Enter ingredients (comma-separated):");
  String instructions = input("Enter instructions:");
  String comments = input("Enter comments:");

  Recipes newRecipe = new Recipes(recipeName, ingredients, instructions, comments);
  recipes.add(newRecipe);
}


void findRecipe(String ingredients) {
  ArrayList<Recipes> matchingRecipes = new ArrayList<Recipes>();  

  for (Recipes recipe : recipes) {
    if (recipe.containsIngredients(ingredients)) {
      matchingRecipes.add(recipe);
    }
  }

  if (matchingRecipes.size() > 0) {
    println("Matching recipes:");
    for (Recipes recipe : matchingRecipes) {
      println(recipe.toString());
    }
  } else {
    println("No matching recipes found.");
  }
}

String input(String prompt) {
  println(prompt);
  while (!keyPressed || key != ENTER) {
    delay(10);
  }
  return trim(userInput);
}

//String getText() {
//  return key == 0 ? "" : key == BACKSPACE ? key : key == ENTER ? "\n" : str(key);
//}

class Recipes {
  String name;
  String ingredients;
  String instructions;
  String comments;

  Recipes(String name, String ingredients, String instructions, String comments) {
    this.name = name;
    this.ingredients = ingredients;
    this.instructions = instructions;
    this.comments = comments;
  }

  boolean containsIngredients(String query) {
    String[] ingredientList = split(ingredients, ",");
    String[] queryList = split(query, ",");

    for (String q : queryList) {
      boolean found = false;
      for (String ingredient : ingredientList) {
        if (trim(q).equalsIgnoreCase(trim(ingredient))) {
          found = true;
          break;
        }
      }

      if (!found) {
        return false;
      }
    }

    return true;
  }

  public String toString() {
    return "Name: " + name + "\nIngredients: " + ingredients + "\nInstructions: " + instructions + "\nComments: " + comments + "\n";
  }
}
