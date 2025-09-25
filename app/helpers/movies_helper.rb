module MoviesHelper

  def sort_column(title, column_key, preference)
    
    is_sorted = (preference&.last_column == column_key)
    direction = preference&.direction || "asc"
    
    
    arrow = ""
    if is_sorted
      arrow = direction == "asc" ? " ↑" : " ↓"
    end
    
    
    css_class = is_sorted ? "main" : ""
    link = link_to "#{title}#{arrow}", movies_path(sort: column_key)
    content_tag :th, link, class: css_class
  end
end
