# New-Strong

Add Bold/Strong text.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the text contents._ Mandatory

### Parameter Set 2

- `[String]` **Text** _A string of the text contents._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `**My bold text**`

```powershell
New-Document { P { B "My bold text"} }
```
### Example 2

Create an Html document with the contents `<p><strong>My bold text</strong></p>`

```powershell
New-Document -Type Html/Bootstrap { P { B "My bold text"} }
```
