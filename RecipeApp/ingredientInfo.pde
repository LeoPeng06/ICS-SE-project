//Make a dictionary for each one in order to check each recipe
void getIngredients(){
  
  int endIndex = 0;
  int startIndex = 0;
  try{
  
    for(int i = 0; i < numRecipes; i++){
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
      //adds each index with ingredients to an arraylist
      //removed later to be replaced by hashtable
      dict.clear();
     ingredientsNeeded.clear();
     
     for(int j = 0; j < endIndex - startIndex; j++){
       ingredientsNeeded.add(myData[startIndex+j]);
       
      }
      String[] split = myData[0].split(":");
      dict.put(split[1],ingredientsNeeded);
      recipeNames.add(split[1]);
    }
  }
  catch(Exception e){
    println("you Have no recipes");
  }

}


void containsIngredients(){
  int counter = 0;
  
  try{
    ingredientsOwned = ingredientsOwn.split(","); //splits the text entered in the search bar
  }
  catch(Exception E){
  }
  try{
    
    for(int i = 0; i < recipeNames.size(); i++){
      counter = 0;
      for(int j = 0; j < dict.get(recipeNames.get(i)).size(); j++){
        if(dict.get(recipeNames.get(i)).contains(ingredientsOwned[j])){
          //println(ingredientsOwned[j]);
          counter++;
          if (counter == dict.get(recipeNames.get(i)).size()){
            //println("lalala");
            
          }
          //println(dict.get(recipeNames.get(i)).size());
         // println(counter);
        }
        
      }
      if (ingredientsNeeded.contains(ingredientsOwned[i])){ //if text entered is in one of the ingredients needed, prints yay
        println("yay");
      }
      else{
        println("na");
      }
    }
  
  }
  catch(Exception E){
  }
  
}
