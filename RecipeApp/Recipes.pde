class Recipes{
  String name;
  PVector pos;
  boolean canCook;
  int prepTime;
  int cookTime;
  String author;
  Recipes(String n,int pt,int ct, String a){
    this.name = n;
    this.pos.x = x;
    this.pos.y = y;
    this.prepTime = pt;
    this.cookTime = ct;
    this.author = a;
    this.canCook = false;
  }
  
  void drawRecipes(){
    rectMode(LEFT);
    fill(255);
    rect(x,y,x+100,y+70);
    fill(0);
    if(this.name.length()< 20){
      textSize(12);
    }
    else{
      textSize(floor(250/this.name.length()));
    }
    textAlign(CENTER);
    text(this.name,x+50,y+15);
    textAlign(LEFT);
    text("by: " + this.author, x+3,y+30);
    text("prep time: " +(this.prepTime+this.cookTime), x+3,y+45);
    text("cook time: "+this.cookTime, x+3, y+60);
    
  }
  
  void cookable(int i){
    if(uniqueRecipes.contains(this.name)){
      matchingRecipes.add(recipeList.get(i));
    }
  
  }
  
  
  void openRecipe(){
    if(mouseClicked()&&mouse.pos.x)
  
  } 



}

void setRecipePos(int i){
  y = 150+100*floor(i/4);
  x = 35 + 110*(i%4);
 

}
