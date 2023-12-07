//Make a dictionary for each one in order to check each recipe
void getIngredients(){
  recipeNames = new ArrayList<String>();
  int endIndex = 0;
  int startIndex = 0;
  try{

    for(int i = 0; i < numRecipes; i++){
      ingredientsNeeded = new ArrayList<>();
      String[] myData = loadStrings(i+".txt");
      for(int j=0; j<myData.length; j++){
        //gets the first index with ingredients and also the index where it ends
        if(myData[j].contains("List of Ingredients:")){
          startIndex = j+1;
        }
        if(myData[j].contains("Preparation Time:")){
          endIndex = j;
        }       
        
      }     
     for(int j = 0; j < endIndex - startIndex; j++){
       
       ingredientsNeeded.add(myData[startIndex+j].strip().toLowerCase());
       
      }
      
      String[] split = myData[0].split(":");
      dict.put(split[1],ingredientsNeeded);
      recipeNames.add(split[1].strip());
    }
  }
  catch(Exception e){
    text("you Have no recipes",250,250);
  }
  
}


void containsIngredients() {
  int textY = 250; // Initial vertical position of the text
  uniqueRecipes = new HashSet<>(); // Set to store unique recipes
  ArrayList<String> cookableRecipes = new ArrayList<String>();

  try {
    ingredientsOwned = ingredientsOwn.split(",");
    
    boolean recipeFound = false; // Flag to check if at least one match is found
    for (int i = 0; i < recipeNames.size(); i++) {
      int counter = 0;

      for (int j = 0; j < ingredientsOwned.length; j++) {
        ingredientsOwned[j]=ingredientsOwned[j].trim();
        if (dict.get(recipeNames.get(i)).contains(ingredientsOwned[j].toLowerCase())) {
          counter++;
          String recipeName = recipeNames.get(i);
          if (counter == dict.get(recipeNames.get(i)).size()) {
            if(!uniqueRecipes.contains(recipeName)){
              fill(0);
              textAlign(CENTER);
              text("You can make " + recipeNames.get(i), 250, textY);
            }
            // Move the text down for the next match
            textY += 20; // Adjust the value based on your preference for spacing
            
            uniqueRecipes.add(recipeName);
            cookableRecipes.add(recipeName);
            recipeFound = true;
          }
        }
      }
       

    }

    if (!recipeFound) {
      // If no match is found, display a message
      fill(0);
      textAlign(CENTER);
      text("No matching recipes found", 250, textY);
    }

  } catch (Exception e) {
  }
}
