# New-TableHead

Add a new Table Heading block.

## Parameters

### Parameter Set 1

- `[String[]]` **Text** _One or more strings representing a single heading record._ Mandatory

### Parameter Set 2

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the heading contents._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents
```markdown
| **Heading** |
| --- |
| one cell |
```

```powershell
New-Document { Table { TR { TH "Heading"}; TR { TD "one cell" }}}
```
### Example 2

Create an Html document with the contents
```html
<table class="table table-striped">
<tr><th>Heading</th><tr></table>
<tr><td>one cell</td><tr></table>
```

```powershell
New-Document -Type Html/Bootstrap {{ Table { TR { TH "Heading"}; TR { TD "one cell" }}}
```
