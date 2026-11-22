local lpeg = require "lpeg" -- require do módulo

print(">> P function pattern")

local p = lpeg.P("hello") -- cria um padrão

-- matches a subject against it
print(lpeg.match(p, "hello world")) --> 6 -- match
print(lpeg.match(p, "world hello")) --> nil -- o match é so com o primeiro char da string.
print(lpeg.match(p, "   hello")) --> nil -- o match é so com o primeiro char da string.
print(lpeg.match(p, "hi world")) --> nil -- mesma situação do 2º, mesmo nao tendo a palavra hello

-- também pode ser usado dessa forma
print(p:match("hello world"))

--

print(">> S function pattern")

local s = lpeg.S("aeiou") -- set de patterns se a string começa com vogal

print(s:match("abacaxi"))
print(lpeg.match(s, "abacaxi")) -- por mais q seja um set (?), também pode ser passado como parametro de match.

-- explicacao: ambos são lpeg-pattern. mas S é um conjunto de patterns. como isso é implementado?
print(p, s)

--

print(">> R function pattern")

-- (acredito que) >set< de patterns que estejam entre os dois caracteres de cara argumento, eles inclusos.
local r = lpeg.R("ae", "vz")  

print(lpeg.R"09":match("hello")) --> nil
print(lpeg.R"09":match("42")) --> 2
print(r:match("azaza"), r:match("zazaza"), r:match("gggg"))

--

print(">> lpeg.locale")

local loc = lpeg.locale()

print(loc.space:match(" "))