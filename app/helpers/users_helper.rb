module UsersHelper

  def link_to_google
    content_tag :h4 do
      link_to "Google Link Test", "http://www.google.com"
    end
  end
end