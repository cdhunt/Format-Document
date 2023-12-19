# New-TableData

Add a new Table Data block.

## Parameters

### Parameter Set 1

- `[String[]]` **Text** _One or more strings representing a single record._ Mandatory

### Parameter Set 2

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the data record._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `| one cell |`

```powershell
New-Document { Table { TR { TD "one cell" }}}
```
### Example 2

Create a Markdown document with the contents `| one cell | 2nd cell |`

```powershell
New-Document { Table { TR { TD "one cell","2nd cell" }}}
```
### Example 3

Create an Html document with the contents
```
<table class="table table-striped">
<tr><td>one cell</td><tr></table>
```

```powershell
New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}
```
