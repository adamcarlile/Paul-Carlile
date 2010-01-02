# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def datebox(date)
    output = %(<div class="datebox">\n)
    output += content_tag('span', date.strftime("%d"), :class => "day")
    output += content_tag('span', (date.strftime("%b")).upcase, :class => "month")
    output += %(</div>)
  end
end
