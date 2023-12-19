function New-Paragraph {
    <#
    .SYNOPSIS
        Add a Paragraph block.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents of the Paragraph.
    .PARAMETER Text
        A string of the text contents of the Paragraph.
    .EXAMPLE
        New-Document { P "My Paragraph."}

        Create a Markdown document with the contents `My Paragraph.`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { P "My Paragraph."}

        Create an Html document with the contents `<p>My Paragraph.</p>`
    #>
    [CmdletBinding()]
    [Alias('P')]
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
    $formatter["Paragraph"] -f $Text | Write-Output
    [System.Environment]::NewLine
}