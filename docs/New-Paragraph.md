# New-Paragraph

Add a Paragraph block.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the text contents of the Paragraph._ Mandatory

### Parameter Set 2

- `[String]` **Text** _A string of the text contents of the Paragraph._ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `My Paragraph.`

```powershell
New-Document { P "My Paragraph."}
```
### Example 2

Create an Html document with the contents `<p>My Paragraph.</p>`

```powershell
New-Document -Type Html/Bootstrap { P "My Paragraph."}
```
