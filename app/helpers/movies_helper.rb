module MoviesHelper

  def sort_column(title, column_key, preference)
    
  is_sorted = (preference&.last_column == column_key)
  direction = preference&.direction || "asc"
  
  new_direction = is_sorted && direction == "asc" ? "desc" : "asc"

  arrow = is_sorted ? (direction == "asc" ? " ↓" : " ↑") : ""
  css_class = is_sorted ? "main" : ""

  link = link_to "#{title}#{arrow}", movies_path(sort: column_key, direction: new_direction)
  content_tag :th, link, class: css_class
  end
end


