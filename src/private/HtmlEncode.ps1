function HtmlEncode ($string) {

    if ($PSVersionTable.PSVersion -lt [version]"6.0.0") {
        return [Net.WebUtility]::HtmlEncode($string)
    } else {
        return [Web.Httputility]::HtmlEncode($string)
    }

}