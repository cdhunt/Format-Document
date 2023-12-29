function New-TableBody {
    <#
    .SYNOPSIS
        Add a new TBody block.
    .PARAMETER TextBlock
        A scriptblock rendering the table body contents.
    .EXAMPLE
        New-Document { Table TBody { { TR { TD "one cell" }}}}

        Create a Markdown document with the contents `| one cell |`
    .EXAMPLE
        New-Document -Type Html/Bootstrap { Table { TR { TD "one cell" }}}

        Create an Html document with the contents
        ```
        <table class="table table-striped">
        <tbody>
        <tr><td>one cell</td><tr></tbody></table>
        ```
    #>
    [CmdletBinding()]
    [Alias('TBody')]
    param (
        [Parameter(Mandatory, Position = 0)]
        [scriptblock]
        $TextBlock
    )

    $formatter["Table-Body"] -f ($TextBlock.Invoke() -join [string]::Empty)
}