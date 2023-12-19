function New-Link {
    <#
    .SYNOPSIS
        Add a Link.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents of the Link.
    .PARAMETER UriBlock
        A scriptblock rendering the contents of the Uri/Href.
    .PARAMETER Text
        A string of the text contents of the Link.
    .EXAMPLE
        New-Document { P { Link "Text" https://google.com }}

        Create a Markdown document with the contents `[Text](https://google.com)`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { P { Link "Text" https://google.com }}

        Create an Html document with the contents `<p><a href="https://google.com">Text</a></p>`
    #>
    [CmdletBinding()]
    [Alias('A', 'Link', 'Href')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 1, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $UriBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string]
        $Text,

        [Parameter(Mandatory, Position = 1, ParameterSetName = "String")]
        [string]
        $Uri
    )

    if ($PSBoundParameters.ContainsKey('TextBlock')) {
        $Text = $TextBlock.Invoke()
        $Uri = $UriBlock.Invoke()
    }
    $formatter["Link-External"] -f $Text, $Uri
}