-- Max Bergdahl och Niklas Bergdahl 7/9-15 --
module
F1
where
-- Vad ska de andra funktionernas typsignaturer vara?
fib :: Integer -> Integer
fib n = if n == 0
	then let x = 0
	else if n == 1
		then let x = 1
		else fib(n-1) + (fib(n-2))
rovarsprak s = s
karpsravor s = s
medellangd s = 1.0
skyffla s = s