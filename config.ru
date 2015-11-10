require 'cuba'

Cuba.define do
  on true do
    agent = req.user_agent

    res.write <<-HTML
      User-Agent: #{req.user_agent}<br>
      IP: #{req.ip}
    HTML
  end
end

run Cuba
