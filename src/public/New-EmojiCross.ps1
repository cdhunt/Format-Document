function New-EmojiCross {
    <#
    .SYNOPSIS
        Add :x: emoji
    .EXAMPLE
        New-Document { P { :x: } }

        Create a Markdown document with the contents `:x:`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { P { :x: } }

        Create an Html document with the contents `<p><i class="bi bi-x" style="color: red;"></i></p>`
    #>
    [CmdletBinding()]
    [Alias(':x:', 'cross')]
    param ()

    $formatter['Emoticons-cross']
}