
class Animal
{
	public string name;
	public int health;
	
	public string name.get 
	{
		return name; 
	}	
	public string name.set { name = values; }
	
	
	def Animal(string name, int health)
	{
		this.name = name;
		this.health = health;
	}
	
	def void MakeNoise()
	{
		print(this.name + "Arrrgh");
	}
	
}

class Duck extends Animal
{
	def override void MakeNoise()
	{
		print(this.name + "Quack");
	}
}

interface WaterAnimal
{
	void Swim();
	int breath;
}

class Fish extends Animal implements WaterAnimal
{
	public int breath;
	
	def Fish(string name, int health, int breath) : super(name, health)
	{
		this.breath = breath;
	}
	
	def void Swim()
	{
		print("Swimming");
	}
	

	def override void MakeNoise()
	{
		print(this.name + "ssssssh");
	}
	
}