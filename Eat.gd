extends Area2D

var randomizer = preload("res://loot_randomizer.gd").new()
var Rarity = randomizer.Rarity
var fruit;
var tmap = preload("res://texturemap.png")

var apple = {
	"length": 1,
	"pos": Rect2(0, 32, 16,16),
	"speed": null,
}
var toxic = {
	"length": -2,
	"pos": Rect2(16, 32, 16,16),
	"speed": null,
	
}
var orange = {
	"length": 5,
	"pos": Rect2(32, 32, 16,16),
	"speed": 20,
	
}
var banana = {
	"length": 10,
	"speed": -50,
	"pos": Rect2(0, 48, 16,16)
	
}
var heart = {
	"length": 0,
	"life": 1,
	"pos": Rect2(16, 48, 16,16),
	"speed": null,
	
	
}
func _ready():
	generate()
	
func generate():
	match randomizer.rand():
		Rarity.Normal: fruit = apple
		Rarity.Special: fruit = toxic
		Rarity.Rare: fruit = orange
		Rarity.VeryRare: 
			if randf() > 0.5: fruit = banana
			else: fruit = heart
	$TextureRect.texture.set_region(fruit["pos"])
	


func _on_Eat_body_entered(body):
	body.eat(fruit)
	queue_free()


