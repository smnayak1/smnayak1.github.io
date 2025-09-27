-- Bold "Sandeep M. Nayak" in the rendered reference list
function Div(el)
  if el.identifier == "refs" then
    local html = pandoc.write(pandoc.Pandoc(el.content), "html")
    html = html:gsub("Sandeep M%.?%s*Nayak", "<strong>Sandeep M. Nayak</strong>")
    html = html:gsub("Nayak, S%.?%s*M%.?", "<strong>Nayak, S. M.</strong>")
    return pandoc.RawBlock("html", html)
  end
end
