class Recipes{
  String name;
  PVector pos;
  boolean canCook;
  int prepTime;
  int cookTime;
  String author;
  Recipes(String n,int pt,int ct, String a){
    this.name = n;
    //this.pos.x = x;
    //this.pos.y = y;
    this.prepTime = pt;
    this.cookTime = ct;
    this.author = a;
  }
  
  void drawRecipes(){
    rectMode(LEFT);
    fill(255);
    rect(x,y,x+100,y+70);
  }
  
  void matchingRecipe(){
    //println(this.name);
    if(uniqueRecipes.contains(this.name)){
      println("yeyes");
      //matchingRecipes.add(recipeList.get(recipeList.indexOf(this.name)));
    }
  
  }



}

void setRecipePos(int i){
  y = 150+100*floor(i/4);
  x = 35 + 110*(i%4);
 

}
