# New-EmojiTick

Add :white_check_mark: emoji

## Parameters


## Examples

### Example 1

Create a Markdown document with the contents `:x:`

```powershell
New-Document { P { :white_check_mark: } }
```
### Example 2

Create an Html document with the contents `<p><ac:emoticon ac:name="tick" /></i></p>`

```powershell
New-Document -Type Confluence { P { tick } }
```
