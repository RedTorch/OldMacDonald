//your variable declarations here
public void setup() 
{     
    //Cow c = new Cow("cow", "moo");   
    //System.out.println(c.getType() + " goes " + c.getSound()); 
    Farm macDonald = new Farm();
    macDonald.animalSounds();
}
class Farm 
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()    
  {       
   aBunchOfAnimals[0] = new NamedCow("cow","Elsie","moo");          
   aBunchOfAnimals[1] = new Chick("chick","cheep","cluck");
   aBunchOfAnimals[2] = new Pig("pig","oink");    
  }     
  public void animalSounds()    
  {
    for (int nI=0; nI < aBunchOfAnimals.length; nI++) 
    {             
       System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound() );       
    }       
    System.out.println( "The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getName() );    
  } 
}
//declare classes and the interface below
interface Animal
{
	public String getSound();
	public String getType();
	//public String getName();
}
class Cow implements Animal
{
  protected String myType;
  protected String mySound;
  public Cow(String type, String sound)
  {         
     myType = type;
     mySound = sound;
  }
  public Cow()
  {
     myType = "unknown";
     mySound = "unknown";
  }
  public String getSound(){return mySound;}
  public String getType(){return myType;}
}
class NamedCow extends Cow
{
  //protected String myType;
  protected String myName;
  //protected String mySound;
  public NamedCow(String type, String name, String sound)
  {         
     myType = type;
     myName = name;
     mySound = sound;
  }
  public String getName(){return myName;}
}
class Chick implements Animal
{
  private String myType;
  private String mySound;
  public Chick(String type, String sound1, String sound2)
  {         
     myType = type;
     if(Math.random()*2<1)
     {
       mySound = sound1;
     }
     else
     {
       mySound = sound2;
     }
  }
  public Chick()
  {
     myType = "unknown";
     mySound = "unknown";
  }
  public String getSound(){return mySound;}
  public String getType(){return myType;}
}
class Pig implements Animal
{
  private String myType;
  private String mySound;
  public Pig(String type, String sound)
  {         
     myType = type;
     mySound = sound;
  }
  public Pig()
  {
     myType = "unknown";
     mySound = "unknown";
  }
  public String getSound(){return mySound;}
  public String getType(){return myType;}
}