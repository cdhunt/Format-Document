# New-Heading2

Add an H2 Heading.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the text contents of the Heading._ Mandatory

### Parameter Set 2

- `[String]` **Text** _A string of the text contents of the Heading._ Mandatory

## Examples

### Example 1

Create a document with the contents `## My Heading`

```powershell
New-Document { H2 "My Heading"}
```
