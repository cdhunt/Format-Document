function New-Strong {
    <#
    .SYNOPSIS
        Add Bold/Strong text.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents.
    .PARAMETER Text
        A string of the text contents.
    .EXAMPLE
        New-Document { P { B "My bold text"} }

        Create a Markdown document with the contents `**My bold text**`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { P { B "My bold text"} }

        Create an Html document with the contents `<p><strong>My bold text</strong></p>`
    #>
    [CmdletBinding()]
    [Alias('B')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string]
        $Text
    )

    if ($PSBoundParameters.ContainsKey('TextBlock')) {
        $Text = $TextBlock.Invoke()
    }
    $formatter["Strong"] -f $Text
}