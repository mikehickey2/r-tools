# R Coding Standards

[[r_coding|← Back to R Coding Reference]]

Best practices for writing readable and maintainable R code.

## Table of Contents

- [Use Plain Text](#use-plain-text)
- [Indent Your Code](#indent-your-code)
- [Limit Line Width](#limit-line-width)
- [Keep Functions Short](#keep-functions-short)

---

## Use Plain Text

Always write R code in a plain text editor or IDE. Avoid word processors that add formatting characters.

---

## Indent Your Code

Indent code blocks to show control flow and nesting structure.

**Recommendations:**
- Use 4 spaces per indent level (some prefer 8)
- Be consistent throughout your project
- Too little indentation makes code look cramped and hard to follow

---

## Limit Line Width

Keep lines to approximately 80 characters. This improves readability and makes it easier to view code side-by-side or in split windows.

---

## Keep Functions Short

Each function should do one thing well.

**Guidelines:**
- Aim for functions that fit on one screen (roughly one page of code)
- If a function is getting too long, break it into smaller helper functions
- Single-purpose functions are easier to test, debug, and reuse

---

## See Also

- [[r_functions]] - How to define and work with functions
- [[r_commands_qref]] - Quick reference for R commands
