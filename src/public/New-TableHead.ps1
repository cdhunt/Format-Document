function New-TableHead {
    <#
    .SYNOPSIS
        Add a new Table Heading block.
    .PARAMETER TextBlock
        A scriptblock rendering the heading contents.
    .PARAMETER Text
        One or more strings representing a single heading record.
    .EXAMPLE
        New-Document { Table { TR { TH "Heading"}; TR { TD "one cell" }}}

        Create a Markdown document with the contents
        ```markdown
        | **Heading** |
        | --- |
        | one cell |
        ```
    .EXAMPLE
        New-Document -Type Html/Bootstrap {{ Table { TR { TH "Heading"}; TR { TD "one cell" }}}

        Create an Html document with the contents
        ```html
        <table class="table table-striped">
        <tr><th>Heading</th><tr></table>
        <tr><td>one cell</td><tr></table>
        ```
    #>
    [CmdletBinding(DefaultParameterSetName = "String")]
    [Alias('TH')]
    param (
        [Parameter(Mandatory, Position = 0, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 0, ParameterSetName = "String")]
        [string[]]
        $Text
    )

    if ($PSBoundParameters.ContainsKey('TextBlock')) {
        $Text = $TextBlock.Invoke()
    }

    $Text | ForEach-Object {
        $Script:tableHeadCount++
        $formatter["Table-Head"] -f $_
    }
}