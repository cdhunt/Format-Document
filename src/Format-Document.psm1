$ConfluenceFormat = @'
Heading1 = <h1>{0}</h1>
Heading2 = <h2>{0}</h2>
Heading3 = <h3>{0}</h3>
Strong = <strong>{0}</strong>
Emphasis = <em>{0}</em>
Underline = <u>{0}</u>
Strikethrough = <span style="text-decoration: line-through;">{0}</span>
Preformatted = <pre>{0}</pre>
BlockQuote = <blockquote>{0}</blockquote>
Paragraph = <p>{0}</p>
Para-Center = <p style="text-align: center;">{0}</p>
Para-Right = <p style="text-align: right;">{0}</p>
Break = <br />
Horizontal = <hr />
Link-External = <a href="{1}">{0}</a>
Table = <table>{0}</table>
Table-Body = <tbody>{0}</tbody>
Table-Row = <tr>{0}</tr>
Table-Head = <th>{0}</th>
Table-Data = <td>{0}</td>
Emoticons-Smile = <ac:emoticon ac:name="smile" />
Emoticons-Sad = <ac:emoticon ac:name="sad" />
Emoticons-cheeky = <ac:emoticon ac:name="cheeky" />
Emoticons-information = <ac:emoticon ac:name="information" />
Emoticons-tick = <ac:emoticon ac:name="tick" />
Emoticons-cross = <ac:emoticon ac:name="cross" />
Emoticons-warning = <ac:emoticon ac:name="warning" />
'@

$BootstrapFormat = @'
Heading1 = <h1>{0}</h1>
Heading2 = <h2>{0}</h2>
Heading3 = <h3>{0}</h3>
Strong = <strong>{0}</strong>
Emphasis = <em>{0}</em>
Underline = <ins>{0}</ins>
Strikethrough = <del>{0}</del>
Preformatted = <pre>{0}</pre>
BlockQuote = <blockquote>{0}</blockquote>
Paragraph = <p>{0}</p>
Para-Center = <p class="text-center">{0}</p>
Para-Right = <p class="text-right">{0}</p>
Break = <br />
Horizontal = <hr />
Link-External = <a href="{1}">{0}</a>
Table = <table class="table table-striped">{0}</table>
Table-Body = <tbody>{0}</tbody>
Table-Row = <tr>{0}</tr>
Table-Head = <th>{0}</th>
Table-Data = <td>{0}</td>
Emoticons-Smile = <ac:emoticon ac:name="smile" />
Emoticons-Sad = <ac:emoticon ac:name="sad" />
Emoticons-cheeky = <ac:emoticon ac:name="cheeky" />
Emoticons-information = <ac:emoticon ac:name="information" />
Emoticons-tick = <i class="bi bi-check2-square"></i>
Emoticons-cross = <i class="bi bi-x" style="color: red;"></i>
Emoticons-warning = <ac:emoticon ac:name="warning" />
'@

$MarkdownFormat = @'
Heading1 = # {0}
Heading2 = ## {0}
Heading3 = ### {0}
Strong = **{0}**
Emphasis = _{0}_
Underline = <ins>{0}</isn>
Preformatted = `{0}`
BlockQuote = > {0}
Paragraph = {0}
Para-Center = <p style="text-align: center;">{0}</p>
Para-Right = <p style="text-align: right;">{0}</p>
Break = <br />
Horizontal = ----
Link-External = [{0}]({1})
Table = {0}
Table-Body = {0}
Table-Row = {0} |
Table-Head = | **{0}**
Table-Data = | {0}
Emoticons-Smile = :smile:
Emoticons-Sad = :sad:
Emoticons-cheeky = :cheeky:
Emoticons-information = :information:
Emoticons-tick = :white_check_mark:
Emoticons-cross = :x:
Emoticons-warning = :warning:
'@

# https://docutils.sourceforge.io/docs/ref/rst/restructuredtext.html
$ReStructuredTextFormat = @'
'@

