class Recipes{
  String name;
  PVector pos = new PVector();
  boolean canCook;
  int prepTime;
  int cookTime;
  String author;
  Recipes(String n,int pt,int ct, String a){
    this.name = n;
    this.prepTime = pt;
    this.cookTime = ct;
    this.author = a;
    this.canCook = false;
  }
  
  void drawRecipes(){
    rectMode(LEFT);
    fill(255);
    rect(this.pos.x,this.pos.y,this.pos.x+100,this.pos.y+70);
    fill(0);
    if(this.name.length()< 20){
      textSize(12);
    }
    else{
      textSize(floor(250/this.name.length()));
    }
    textAlign(CENTER);
    text(this.name,this.pos.x+50,this.pos.y+15);
    textAlign(LEFT);
    text("by: " + this.author, this.pos.x+3,this.pos.y+30);
    text("prep time: " +(this.prepTime+this.cookTime), this.pos.x+3,this.pos.y+45);
    text("cook time: "+this.cookTime, this.pos.x+3, this.pos.y+60);
    
  }
  
  void cookable(int i){
    if(uniqueRecipes.contains(this.name)){
      matchingRecipes.add(recipeList.get(i));
     
    }
  
  }
  

  
  
  void setRecipePos(int i){
    this.pos.x = 35 + 110*(i%4);
    this.pos.y = 150+100*floor(i/4);
  }
}

  
  void mouseClicked(){
    if (ingredientsOwned == null||ingredientsOwn == ""){
      for(int i = 0; i < numRecipes; i++){
        if (mouseX >= recipeList.get(i).pos.x && mouseX <= recipeList.get(i).pos.x+100 && mouseY >= recipeList.get(i).pos.y &&mouseY <= recipeList.get(i).pos.y+70){
          println("hi");
        } 
      }
      
       //recipeList.get(i).setRecipePos(i);
       //recipeList.get(i).drawRecipes();
    }
    
    else{
      for(int i = 0; i < matchingRecipes.size();i++){
        if (mouseX >= matchingRecipes.get(i).pos.x && mouseX <= recipeList.get(i).pos.x+100 && mouseY >= recipeList.get(i).pos.y &&mouseY <= recipeList.get(i).pos.y+70){
          println("hi");
        } 
      }
    
    }
  }
    
    
    
    
   
