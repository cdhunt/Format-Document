function New-Table {
    <#
    .SYNOPSIS
        Add a new Table block.
    .PARAMETER TextBlock
        A scriptblock rendering the table contents.
    .EXAMPLE
        New-Document { Table { TR { TD "one cell" }}}

        Create a Markdown document with the contents `| one cell |`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}

        Create an Html document with the contents
        ```
        <table class="table table-striped">
        <tr><td>one cell</td><tr></table>
        ```
    #>
    [CmdletBinding()]
    [Alias('Table')]
    param (
        [Parameter(Mandatory, Position = 0)]
        [scriptblock]
        $TextBlock
    )

    $Script:tableHeadCount = 0
    $formatter["Table"] -f ($TextBlock.Invoke() -join [string]::Empty)
}