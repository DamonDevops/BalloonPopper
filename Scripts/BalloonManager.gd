extends Node3D

var total_score :int = 0
@export var score_text :Label 

func increase_score(score):
	total_score += score
	score_text.text = str("Score: ", total_score)
