# GDScript for Godot Engine
# Attach this to a Node and run

extends Node

func fizzbuzz(n: int) -> String:
    if n % 15 == 0:
        return "FizzBuzz"
    elif n % 3 == 0:
        return "Fizz"
    elif n % 5 == 0:
        return "Buzz"
    else:
        return str(n)

func _ready():
    for i in range(1, 101):
        print(fizzbuzz(i))
