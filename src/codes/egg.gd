extends Area2D


func _on_body_entered(body):
	Globalz.contegg += 1
	queue_free()
