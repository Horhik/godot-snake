extends Node


enum Rarity {
	Normal,
	Special,
	Rare,
	VeryRare
}
		
func rand():
	var val = round(randf() * 100)
	if val in range (70, 101):
		return Rarity.Normal
	elif val in range(50, 70):
		return Rarity.Special
	elif val in range(20, 50):
		return Rarity.Rare
	elif val in range(10, 20):
		return Rarity.VeryRare
	elif val in range(0, 10):
		return Rarity.VeryRare
