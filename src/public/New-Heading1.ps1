function New-Heading1 {
    <#
    .SYNOPSIS
        Add an H1 Heading.
    .PARAMETER TextBlock
        A scriptblock rendering the text contents of the Heading.
    .PARAMETER Text
        A string of the text contents of the Heading.
    .EXAMPLE
        New-Document { H1 "My Heading"}

        Create a document with the contents `# My Heading`
    #>
    [CmdletBinding()]
    [Alias('H1', 'Heading1', 'Header1')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string]
        $Text
    )

    New-Heading -Heading 1 @PSBoundParameters | Write-Output
}