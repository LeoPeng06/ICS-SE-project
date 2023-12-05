//Make a dictionary for each one in order to check each recipe
void getIngredients(){
  
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
       
       ingredientsNeeded.add(myData[startIndex+j].strip());
       
      }
      
      String[] split = myData[0].split(":");
      dict.put(split[1],ingredientsNeeded);
      

     // println(ingredientsNeeded);
      recipeNames.add(split[1].strip());
      //ingredientsNeeded.clear();
     // println(dict);
    
    }
    //ingredientsNeeded.clear();
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
    for(int i = 0; i < recipeNames.size(); i++){ // i = recipe index
      counter = 0;
      //println(recipeNames.size());
      for(int j = 0; j < ingredientsOwned.length; j++){
        if(dict.get(recipeNames.get(i)).contains(ingredientsOwned[j])){
          //println(dict.get(recipeNames.get(i)));
          counter++;
          if (counter == dict.get(recipeNames.get(i)).size()){
            println("you can make " + recipeNames.get(i));         
          }
         // println(dict.get(recipeNames.get(1)).size());
          //println(counter);
         // println(ingredientsOwned);
      //if (ingredientsNeeded.contains(ingredientsOwned[j])){ //if text entered is in one of the ingredients needed, prints yay
      //  println("matching recipe found");
      //}
      //else{
      //  println("no recipes found");
      //}
        }     
      }
    }
  
  }
  catch(Exception E){
    
  }
  
}
