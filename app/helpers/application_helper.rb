module ApplicationHelper

  def full_title(page_title)
    global_title = "Mooi"
    if(page_title.empty?)
      global_title
    end
      "#{global_title} | #{page_title}"
  end
end
