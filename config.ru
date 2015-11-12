require 'cuba'
require 'erb'

Cuba.define do
  on true do
    template = <<-HTML
      <%- for (k,v) in env -%>
      <div><%= k %>: <%= v %></div>
      <%- end -%>
    HTML

    res.write ERB.new(template, 0, '-').result(binding)
  end
end

run Cuba
