//Make a dictionary for each one in order to check each recipe
void getIngredients(){
  int endIndex = 0;
  int startIndex = 0;
  try{
  String[] myData = loadStrings("1.txt");
  for(int i = 0; i < numRecipes; i++){
    for(int j=0; j<myData.length; j++){
      String nextRow = myData[j];
      if(myData[j].contains("List of Ingredients:")){
        startIndex = j+1;
      }
      if(myData[j].contains("Preparation Time:")){
        endIndex = j;
      }       
    }
   for(int j = 0; j < endIndex - startIndex; j++){
     ingredientsNeeded.add(myData[startIndex+j]);
    }
  }
  }
  catch(Exception e){
    println("you Have no recipes");
  }

}

void containsIngredients(){
  int counter = 0;
  try{
  ingredientsOwned = ingredientsOwn.split(",");
  }
  catch(Exception E){
  }
  try{

  for(int i = 0; i < ingredientsOwned.length; i++){
    if (ingredientsNeeded.contains(ingredientsOwned[i])){
      counter++;
    }
  }
  
  }
  catch(Exception E){
  }
  
}
