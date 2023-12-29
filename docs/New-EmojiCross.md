# New-EmojiCross

Add :x: emoji

## Parameters


## Examples

### Example 1

Create a Markdown document with the contents `:x:`

```powershell
New-Document { P { :x: } }
```
### Example 2

Create an Html document with the contents `<p><i class="bi bi-x" style="color: red;"></i></p>`

```powershell
New-Document -Type Html/Bootstrap { P { :x: } }
```
