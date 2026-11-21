_Sequence patterns (e.g., a text string) are often described using regular expressions and matched using techniques such as backtracking._ (1)

1. [Patter Matching - Wikipedia](https://en.wikipedia.org/wiki/Pattern_matching)

```SNOBOL

         OUTPUT = "What is your name?"
          Username = INPUT
          Username "J"                                             :S(LOVE)
          Username "K"                                             :S(HATE)
MEH       OUTPUT = "Hi, " Username                                 :(END)
LOVE      OUTPUT = "How nice to meet you, " Username               :(END)
HATE      OUTPUT = "Oh. It's you, " Username
END
```
2. [SNOBOL](https://en.wikipedia.org/wiki/SNOBOL)


