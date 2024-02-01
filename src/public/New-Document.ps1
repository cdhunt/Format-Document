function New-Document {
    <#
.SYNOPSIS
    Create a new Document object of a given Type.
.DESCRIPTION
    Create a new Document object of a given Type. Default Type is Markdown.
.PARAMETER Document
    A scriptblock containing Format-Document commands.
.PARAMETER Type
    The Format Type to build. Options are 'Markdown', 'Confluence', or 'Html/Bootstrap'.
#>
    [CmdletBinding()]
    param (
        [Parameter(Mandatory, Position = 0, ValueFromPipeline)]
        [scriptblock]
        $Document,

        [Parameter(Position = 1)]
        [ValidateSet('Markdown', 'Confluence', 'Html/Bootstrap')]
        [string]
        $Type
    )

    begin {
        switch ($type) {
            'Confluence' {
                $formatter = ConvertFrom-StringData -StringData $ConfluenceFormat
                $extension = '.confluence'
            }
            'Html/Bootstrap' {
                $formatter = ConvertFrom-StringData -StringData $BootstrapFormat
                $extension = '.html'
            }
            Default {
                $formatter = ConvertFrom-StringData -StringData $MarkdownFormat
                $extension = '.md'
            }
        }

        Update-TypeData -TypeName "System.String" -MemberType ScriptProperty -MemberName "Bold" -Value {
            $formatter.Strong -f $this
        } -Force
    }


    process {
        $Document.Invoke()
    }

    end {

    }
}