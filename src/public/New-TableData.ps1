function New-TableData {
    <#
    .SYNOPSIS
        Add a new Table Data block.
    .PARAMETER TextBlock
        A scriptblock rendering the data record.
    .PARAMETER Text
        One or more strings representing a single record.
    .EXAMPLE
        New-Document { Table { TR { TD "one cell" }}}

        Create a Markdown document with the contents `| one cell |`
    .EXAMPLE
        New-Document { Table { TR { TD "one cell","2nd cell" }}}

        Create a Markdown document with the contents `| one cell | 2nd cell |`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}

        Create an Html document with the contents
        ```
        <table class="table table-striped">
        <tr><td>one cell</td><tr></table>
        ```
    #>
    [CmdletBinding(DefaultParameterSetName = "String")]
    [Alias('TD')]
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
        $formatter["Table-Data"] -f $_
    }
}