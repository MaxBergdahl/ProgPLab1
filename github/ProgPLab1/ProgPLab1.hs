-- Max Bergdahl och Niklas Bergdahl 7/9-15 --
module
F1
where
-- Vad ska de andra funktionernas typsignaturer vara?
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = if n > 1
	then fib (n-1) + fib (n-2)
	else n
rovarsprak s = s
karpsravor s = s
medellangd s = 1.0
skyffla s = s