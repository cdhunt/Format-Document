# New-TableBody

Add a new TBody block.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the table body contents._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `| one cell |`

```powershell
New-Document { Table TBody { { TR { TD "one cell" }}}}
```
### Example 2

Create an Html document with the contents
```
<table class="table table-striped">
<tbody>
<tr><td>one cell</td><tr></tbody></table>
```

```powershell
New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}
```
