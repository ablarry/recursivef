
# Recursive functions
The μ-recursive functions (or general recursive functions) are partial functions that take finite tuples of natural numbers and return a single natural number. They are the smallest class of partial functions that includes the initial functions and is closed under composition, primitive recursion, and the μ operator.
* Partial functions are functions which are only defined for a subset of
their domains.
* Strictly partial functions are functions which are only defined for a
proper subset of their domains.
* Total functions are functions which are defined for every value in their
domains.

### Functions:
* zero - ζ() - zero function
* succ - σ(x) - succesor function
* proj - projection function
* sum - addition function
* mult - multiply function
* ex - exponential function
* pred - predecessor function
* monus - minus function
* eq - equal function
* quo - quotien function
* acker - acker function
* fib - fibonacci function
* fact - factorial function

### Requirements
* [GHC](https://www.haskell.org/ghc/): the Glasgow Haskell Compiler
* [stack](https://docs.haskellstack.org/en/stable/README/): a cross-platform program for developing Haskell projects
### Quickstart 
```shell
ghci app/Main.hs
```
### Examples

#### suc
```shell
ghci> proj 5 2 [1,2,3,4,5]
[2]
```
#### suc
```shell
ghci> suc [5]
[6]
```

#### plus
```shell
ghci> plus [6,4]
[10]
```

#### mult
```shell
ghci> mult [5,3]
[15]
```

#### ex
```shell
ghci> ex [3,3]
[27]
```
#### monus
```shell
ghci> monus [30,10]
[20]
```

#### eq
```shell
ghci> eq [1,1]
[1]
ghci> eq [1,0]
[0]
```
#### quo
```shell
ghci> quo [20,5]
[4]
```
#### acker
```shell
ghci> acker [3,1]
[13]
```
#### fib
```shell
ghci> fib [6]
[8]
```

#### fact
```shell
ghci> fact [5]
[120]
```

### References
* [Primitive recursive function](https://en.wikipedia.org/wiki/Primitive_recursive_function)











## License

MIT


