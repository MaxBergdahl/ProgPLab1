-- Max Bergdahl och Niklas Bergdahl 7/9-15 --
module
F1
where
-- Vad ska de andra funktionernas typsignaturer vara?
fib :: Integer -> Integer
-- fib skriven av Max Bergdahl
fib 0 = 0
fib 1 = 1
fib n = if n > 1
	then fib (n-1) + fib (n-2)
	else n

--rovarsprak s

rovarsprak :: String -> String
--rovarsprak skriven av Max Bergdahl
rovarsprak (s:b)
	| not(elem s "aeiouy") = s:'o':s : rovarsprak b
	| otherwise = s:rovarsprak b
rovarsprak s = s
-- a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z.
--karpsravor skriven av Max Bergdahl
karpsravor :: String -> String
karpsravor (s:b)
	| not(elem s "aeiouy") = s:karpsravor(drop 2 b)
	| otherwise = s:karpsravor b
karpsravor s = s
--karpsdrop s = drop 2 s;
medellangd s = 1.0
skyffla s = s