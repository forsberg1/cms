class Menu
  def fetch_menu
        #content_tag(:li, :class=>'active')
        m_text = ['Startsida','information','kontakt']
        m_text.each.with_index do |s, index|
        	index
         #content_tag(:li, link_to(s[index], "dsad"))
        end
        #content_tag(:li, content_tag(link_to "Hemsida", root_path),   :class => "active") 
      end
end
