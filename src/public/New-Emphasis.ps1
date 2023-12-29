function New-Emphasis {
    <#
    .SYNOPSIS
        Add Emphasis/Italics text.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents.
    .PARAMETER Text
        A string of the text contents.
    .EXAMPLE
        New-Document { P { I "My italics text"} }

        Create a Markdown document with the contents `_My italics text_`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { P { I "My italics text"} }

        Create an Html document with the contents `<p><em>My italics text</em></p>`
    #>
    [CmdletBinding()]
    [Alias('I', 'em')]
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
    $formatter["Emphasis"] -f $Text
}