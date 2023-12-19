function New-Heading3 {
    <#
    .SYNOPSIS
        Add an H3 Heading.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents of the Heading.
    .PARAMETER Text
        A string of the text contents of the Heading.
    .EXAMPLE
        New-Document { H3 "My Heading"}

        Create a document with the contents `### My Heading`
    #>
    [CmdletBinding()]
    [Alias('H3', 'Heading3', 'Header3')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string]
        $Text
    )

    New-Header -Heading 3 @PSBoundParameters | Write-Output
}