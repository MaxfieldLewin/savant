module ApplicationHelper

  def form_auth_token
    <<-HTML.html_safe
    <input type="hidden" name="authenticity_token" value="#{form_authenticity_token}">
    HTML
  end

  def form_http_method(method)
    <<-HTML.html_safe
    <input type="hidden" name="_method" value="#{method}">
    HTML
  end

end
