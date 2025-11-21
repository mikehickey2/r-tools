# R Control Structures

[[r_coding|← Back to R Coding Reference]]

Control structures manage the flow of execution in your R code. They are typically used when writing [[r_functions|functions]] or longer expressions.

## Table of Contents

- [Quick Reference](#quick-reference)
- [if, else](#if-else)
- [for Loops](#for-loops)
- [while Loops](#while-loops)
- [repeat Loops](#repeat-loops)
- [Loop Control](#loop-control)

---

## Quick Reference

| Keyword | Description |
|---------|-------------|
| `if, else` | Execute code based on a condition |
| `for` | Repeat code a fixed number of times |
| `while` | Repeat code while a condition is true |
| `repeat` | Repeat code indefinitely until break |
| `break` | Exit a loop immediately |
| `next` | Skip to the next iteration of a loop |
| `return` | Exit a function and return a value |

---

## if, else

Test a condition and execute different code based on the result.

```r
if(<condition>) {
    # do something
} else {
    # do something else
}
```

**Example:**
```r
if(x > 3) {
    y <- 10
} else {
    y <- 0
}
```

---

## for Loops

Execute code a fixed number of times. The loop variable takes successive values from a sequence or vector.

```r
for(i in 1:10) {
    print(i)
}
```

This prints the numbers 1 through 10.

---

## while Loops

Execute code repeatedly as long as a condition remains true.

```r
count <- 1
while(count <= 5) {
    print(count)
    count <- count + 1
}
```

---

## repeat Loops

Execute code indefinitely until a `break` statement is reached. Use with caution to avoid infinite loops.

```r
count <- 1
repeat {
    print(count)
    count <- count + 1
    if(count > 5) break
}
```

---

## Loop Control

| Keyword | Description |
|---------|-------------|
| `break` | Exit the loop immediately |
| `next` | Skip the rest of the current iteration and start the next one |
| `return` | Exit the entire function (when inside a function) |

---

## See Also

- [[r_commands_qref#Loop Functions|Loop Functions]] - Apply-family functions as alternatives to explicit loops
- [[r_functions]] - How to define and work with functions
