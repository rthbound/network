module ApplicationHelper
  def phone_to(number)
    link_to number, "tel:#{number}"
  end
  
  def sortable(column, title=nil)
    title = column.titleize
    join_column = column.pluralize + '.name'
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    # join columns dont change sort directions because, 
    direction = (column == sort_column or join_column == sort_column) && sort_direction == "asc" ? "desc" : "asc"
    link_to title, params.merge({:sort => column, :direction => direction}), {:class => css_class}
  end
end
