function New-Heading {
    [CmdletBinding()]
    param (
        [Parameter(Position = 0)]
        [ValidateRange(1, 6)]
        [Int]
        $Heading = 1,

        [Parameter(Mandatory, Position = 1, ParameterSetName = "ScriptBlock")]
        [scriptblock]
        $TextBlock,

        [Parameter(Mandatory, Position = 1, ParameterSetName = "String")]
        [string]
        $Text
    )

    if ($PSBoundParameters.ContainsKey('TextBlock')) {
        $Text = $TextBlock.Invoke()
    }
    $formatter["Heading$Heading"] -f $Text | Write-Output
    [System.Environment]::NewLine | Write-Output

}