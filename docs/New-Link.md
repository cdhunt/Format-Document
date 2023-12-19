# New-Link

Add a Link.

## Parameters

### Parameter Set 1

- `[ScriptBlock]` **TextBlock** _A scriptblock rendering the text contents of the Link._ Mandatory
- `[ScriptBlock]` **UriBlock** _A scriptblock rendering the contents of the Uri/Href._ Mandatory

### Parameter Set 2

- `[String]` **Text** _A string of the text contents of the Link._ Mandatory
- `[String]` **Uri** _Parameter help description_ Mandatory

## Examples

### Example 1

Create a Markdown document with the contents `[Text](https://google.com)`

```powershell
New-Document { P { Link "Text" https://google.com }}
```
### Example 2

Create an Html document with the contents `<p><a href="https://google.com">Text</a></p>`

```powershell
New-Document -Type Html/Bootstrap { P { Link "Text" https://google.com }}
```
