/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void panel1_Click1(GPanel source, GEvent event) { //_CODE_:RecipeMaker:990519:
  
} //_CODE_:RecipeMaker:990519:

public void getRecipe(GTextField source, GEvent event) { //_CODE_:Recipe:596946:
  nameOfNewRecipe = Recipe.getText();
} //_CODE_:Recipe:596946:

public void getIngredients(GTextArea source, GEvent event) { //_CODE_:Ingredients:442834:
 listOfRecipeIngredients = Ingredients.getText();
} //_CODE_:Ingredients:442834:

public void getCreator(GTextField source, GEvent event) { //_CODE_:Creator:683179:
  nameOfRecipeCreator = Creator.getText();
} //_CODE_:Creator:683179:

public void SaveRecipeToText(GButton source, GEvent event) { //_CODE_:SaveRecipe:945748:
   if (nameOfNewRecipe == null || listOfRecipeIngredients == null ||nameOfRecipeCreator == null||recipeSteps == null){
   }
   else{
    SaveRecipeToText();
   }
} //_CODE_:SaveRecipe:945748:

public void PreparationTIme(GSlider source, GEvent event) { //_CODE_:PrepTime:931366:
  prepTime = PrepTime.getValueI();
} //_CODE_:PrepTime:931366:

public void slider1_change1(GSlider source, GEvent event) { //_CODE_:CookingTime:759661:
  cookTime = CookingTime.getValueI();
} //_CODE_:CookingTime:759661:

public void RecipeInstructions(GTextArea source, GEvent event) { //_CODE_:recipeInstructions:645923:
  recipeSteps = recipeInstructions.getText();
} //_CODE_:recipeInstructions:645923:

public void SearchRecipes(GTextField source, GEvent event) { //_CODE_:searchIngredient:913126:
 ingredientsOwn = searchIngredient.getText();
} //_CODE_:searchIngredient:913126:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  RecipeMaker = new GPanel(this, 40, 30, 410, 450, "Recipe Maker");
  RecipeMaker.setDraggable(false);
  RecipeMaker.setText("Recipe Maker");
  RecipeMaker.setOpaque(true);
  RecipeMaker.addEventHandler(this, "panel1_Click1");
  Recipe = new GTextField(this, 10, 60, 120, 20, G4P.SCROLLBARS_NONE);
  Recipe.setOpaque(true);
  Recipe.addEventHandler(this, "getRecipe");
  RecipeName = new GLabel(this, 10, 30, 120, 20);
  RecipeName.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  RecipeName.setText("Recipe Name");
  RecipeName.setOpaque(false);
  Ingredients = new GTextArea(this, 270, 60, 120, 200, G4P.SCROLLBARS_NONE);
  Ingredients.setOpaque(true);
  Ingredients.addEventHandler(this, "getIngredients");
  Creator = new GTextField(this, 140, 60, 120, 20, G4P.SCROLLBARS_NONE);
  Creator.setOpaque(true);
  Creator.addEventHandler(this, "getCreator");
  CreatorName = new GLabel(this, 140, 30, 120, 20);
  CreatorName.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  CreatorName.setText("CreatorName");
  CreatorName.setOpaque(false);
  IngredientsLabel = new GLabel(this, 270, 30, 120, 20);
  IngredientsLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  IngredientsLabel.setText("Ingredients");
  IngredientsLabel.setOpaque(false);
  SaveRecipe = new GButton(this, 10, 400, 80, 30);
  SaveRecipe.setText("Save Recipe");
  SaveRecipe.addEventHandler(this, "SaveRecipeToText");
  PrepTime = new GSlider(this, 10, 100, 250, 60, 10.0);
  PrepTime.setShowValue(true);
  PrepTime.setShowLimits(true);
  PrepTime.setLimits(0, 0, 120);
  PrepTime.setNbrTicks(24);
  PrepTime.setStickToTicks(true);
  PrepTime.setShowTicks(true);
  PrepTime.setNumberFormat(G4P.INTEGER, 0);
  PrepTime.setOpaque(false);
  PrepTime.addEventHandler(this, "PreparationTIme");
  PrepLabel = new GLabel(this, 10, 85, 120, 20);
  PrepLabel.setText("Preparation Time");
  PrepLabel.setOpaque(false);
  CookTime = new GLabel(this, 10, 155, 120, 20);
  CookTime.setText("Cooking Time");
  CookTime.setOpaque(false);
  CookingTime = new GSlider(this, 10, 170, 250, 60, 10.0);
  CookingTime.setShowValue(true);
  CookingTime.setShowLimits(true);
  CookingTime.setLimits(0, 0, 120);
  CookingTime.setNbrTicks(24);
  CookingTime.setStickToTicks(true);
  CookingTime.setShowTicks(true);
  CookingTime.setNumberFormat(G4P.INTEGER, 0);
  CookingTime.setOpaque(false);
  CookingTime.addEventHandler(this, "slider1_change1");
  CookingSteps = new GLabel(this, 10, 230, 120, 20);
  CookingSteps.setText("Cooking Instructions");
  CookingSteps.setOpaque(false);
  recipeInstructions = new GTextArea(this, 10, 269, 380, 120, G4P.SCROLLBARS_NONE);
  recipeInstructions.setOpaque(true);
  recipeInstructions.addEventHandler(this, "RecipeInstructions");
  RecipeMaker.addControl(Recipe);
  RecipeMaker.addControl(RecipeName);
  RecipeMaker.addControl(Ingredients);
  RecipeMaker.addControl(Creator);
  RecipeMaker.addControl(CreatorName);
  RecipeMaker.addControl(IngredientsLabel);
  RecipeMaker.addControl(SaveRecipe);
  RecipeMaker.addControl(PrepTime);
  RecipeMaker.addControl(PrepLabel);
  RecipeMaker.addControl(CookTime);
  RecipeMaker.addControl(CookingTime);
  RecipeMaker.addControl(CookingSteps);
  RecipeMaker.addControl(recipeInstructions);
  searchIngredient = new GTextField(this, 200, 50, 200, 30, G4P.SCROLLBARS_NONE);
  searchIngredient.setOpaque(true);
  searchIngredient.addEventHandler(this, "SearchRecipes");
}

// Variable declarations 
// autogenerated do not edit
GPanel RecipeMaker; 
GTextField Recipe; 
GLabel RecipeName; 
GTextArea Ingredients; 
GTextField Creator; 
GLabel CreatorName; 
GLabel IngredientsLabel; 
GButton SaveRecipe; 
GSlider PrepTime; 
GLabel PrepLabel; 
GLabel CookTime; 
GSlider CookingTime; 
GLabel CookingSteps; 
GTextArea recipeInstructions; 
GTextField searchIngredient; 