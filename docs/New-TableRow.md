# New-TableRow

Add a new Table Row block.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the row contents._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `| one cell |`

```powershell
New-Document { Table { TR { TD "one cell" }}}
```
### Example 2

Create an Html document with the contents
```
<table class="table table-striped">
<tr><td>one cell</td><tr></table>
```

```powershell
New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}
```
