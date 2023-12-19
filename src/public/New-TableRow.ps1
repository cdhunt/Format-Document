function New-TableRow {
    <#
    .SYNOPSIS
        Add a new Table Row block.
    .PARAMETER TextBlock
        A scriptblock rendering the row contents.
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
    [Alias('TR')]
    param (
        [Parameter(Mandatory, Position = 0)]
        [scriptblock]
        $TextBlock
    )

    [System.Environment]::NewLine

    $formatter["Table-Row"] -f ($TextBlock.Invoke() -join ' ')

    if ($Script:tableHeadCount -gt 0 -and $extension -eq '.md') {
        $headCount = $Script:tableHeadCount
        $Script:tableHeadCount = 0

        New-TableRow {
            for ($i = 0; $i -lt $headCount; $i++) {
                New-TableData -Text '---'
            }
        }
    }
}