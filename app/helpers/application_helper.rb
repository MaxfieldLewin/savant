module ApplicationHelper

  def form_auth_token
    <<-HTML
    <input type="hidden" name="authenticity_token" value="<%= form_authenticity_token %>">
    HTML
  end

end
