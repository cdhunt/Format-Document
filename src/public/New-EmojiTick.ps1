function New-EmojiTick {
    <#
    .SYNOPSIS
        Add :white_check_mark: emoji
    .EXAMPLE
        New-Document { P { :white_check_mark: } }

        Create a Markdown document with the contents `:x:`
    .EXAMPLE
        New-Document -Type Confluence { P { tick } }

        Create an Html document with the contents `<p><ac:emoticon ac:name="tick" /></i></p>`
    #>
    [CmdletBinding()]
    [Alias(':white_check_mark:', 'tick')]
    param ()

    $formatter['Emoticons-tick']
}