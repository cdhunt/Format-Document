BeforeAll {

    Import-Module "$PSScriptRoot/../publish/Format-Document" -Force

    function Get-TestDocument {
        param ([string]$type)

        New-Document -Type $type {
            H1 "My Text"

            H2 { "Heading 2" }

            P { Get-Date "2023-1-1 00:00:00" }

            P {
                "normal text"
                "bold text ScriptParamter".Bold
                B "bold text cmdlet"
                "."
                Link "link Text" "https://google.com"
            }

            Table {
                TR {
                    TH @("Heading 1", "Heading 2")
                }

                TR {
                    TD -Text "Fun"
                    TD -Text "Moar Fun"
                }

                TR {
                    TD @("Item 1", "Item 2")
                }
            }
        }
    }
}

Describe 'Format-Document' {
    Context 'Markdown' {
        BeforeAll {
            $expected = @(
                '# My Text',
                [System.Environment]::NewLine,
                '# Heading 2',
                [System.Environment]::NewLine,
                '01/01/2023 00:00:00',
                [System.Environment]::NewLine,
                'normal text  **bold text cmdlet** . [link Text](https://google.com)',
                [System.Environment]::NewLine,
                @'

| **Heading 1** | **Heading 2** |
| --- | --- |
| Fun | Moar Fun |
| Item 1 | Item 2 |
'@)
        }

        It 'Should return an Markdown document' {
            $result = Get-TestDocument Markdown

            $result.Count | Should -Be $expected.Count

            for ($i = 0; $i -lt $expected.Count; $i++) {
                $result[$i] | Should -Be $expected[$i]
            }
        }
    }

    Context 'Html/Bootstrap' {
        BeforeAll {
            $expected = @('<h1>My Text</h1>',
                [System.Environment]::NewLine,
                '<h1>Heading 2</h1>',
                [System.Environment]::NewLine,
                '<p>01/01/2023 00:00:00</p>',
                [System.Environment]::NewLine,
                '<p>normal text  <strong>bold text cmdlet</strong> . <a href="https://google.com">link Text</a></p>',
                [System.Environment]::NewLine,
                @'
<table class="table table-striped">
<tr><th>Heading 1</th> <th>Heading 2</th><tr>
<tr><td>Fun</td> <td>Moar Fun</td><tr>
<tr><td>Item 1</td> <td>Item 2</td><tr></table>
'@)
        }

        It 'Should return a Html document' {
            $result = Get-TestDocument 'Html/Bootstrap'

            $result.Count | Should -Be $expected.Count

            for ($i = 0; $i -lt $expected.Count; $i++) {
                $result[$i] | Should -Be $expected[$i]
            }
        }
    }

    Context 'Confluence' {
        BeforeAll {
            $expected = @('<h1>My Text</h1>',
                [System.Environment]::NewLine,
                '<h1>Heading 2</h1>',
                [System.Environment]::NewLine,
                '<p>01/01/2023 00:00:00</p>',
                [System.Environment]::NewLine,
                '<p>normal text  <strong>bold text cmdlet</strong> . <a href="https://google.com">link Text</a></p>',
                [System.Environment]::NewLine,
                @'
<table>
<tr><th>Heading 1</th> <th>Heading 2</th><tr>
<tr><td>Fun</td> <td>Moar Fun</td><tr>
<tr><td>Item 1</td> <td>Item 2</td><tr></table>
'@)
        }

        It 'Should return a Confluence document' {
            $result = Get-TestDocument 'Confluence'

            $result.Count | Should -Be $expected.Count

            for ($i = 0; $i -lt $expected.Count; $i++) {
                $result[$i] | Should -Be $expected[$i]
            }

        }

    }
}


AfterAll {
    Remove-Module Format-Document
}