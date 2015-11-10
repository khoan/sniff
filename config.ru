require 'cuba'

Cuba.define do
  on true do
    agent = req.user_agent

    res.write <<-HTML
      User-Agent: #{req.user_agent}
    HTML
  end
end

run Cuba
