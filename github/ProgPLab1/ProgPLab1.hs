-- Max Bergdahl och Niklas Bergdahl 7/9-15 --
module F1 where
import Data.Char

-- Vad ska de andra funktionernas typsignaturer vara?
-- fib skriven av Max Bergdahl
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = if n > 1
	then fib (n-1) + fib (n-2)
	else n

--rovarsprak skriven av Max Bergdahl
rovarsprak :: String -> String
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

Double totalSize = 0
Double wordCount = 1
--medellangd skriven av Max Bergdahl och Niklas Bergdahl
medellangd :: String -> Double
medellangd (s:b)
	| s isAlpha = succ totalSize medellangd b
	| elem s " " = succ wordCount medellangd b
medellangd s = totalSize `div` wordCount

skyffla :: String -> String
skyffla s = s