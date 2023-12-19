function New-Heading2 {
    <#
    .SYNOPSIS
        Add an H2 Heading.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents of the Heading.
    .PARAMETER Text
        A string of the text contents of the Heading.
    .EXAMPLE
        New-Document { H2 "My Heading"}

        Create a document with the contents `## My Heading`
    #>
    [CmdletBinding()]
    [Alias('H2', 'Heading2', 'Header2')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string]
        $Text
    )

    New-Header -Heading 2 @PSBoundParameters | Write-Output
}