# New-Emphasis

Add Emphasis/Italics text.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the text contents._ Mandatory

### Parameter Set 2

- `[String]` **Text** _A string of the text contents._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `_My italics text_`

```powershell
New-Document { P { I "My italics text"} }
```
### Example 2

Create an Html document with the contents `<p><em>My italics text</em></p>`

```powershell
New-Document -Type Html/Bootstrap { P { I "My italics text"} }
```
