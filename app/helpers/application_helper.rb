module ApplicationHelper
  
  
  def render_element(attribute,value)
	  render :partial => "element", :locals => {:attribute => attribute,:value => value}
	end
  
  #Buttons
  # Simplificar os botões de submit
  def submit_button(img_src, text, options = {})
    raw "<button class='button' type='submit'>"+ image_tag(img_src) +' '+ text +"</button>"
  end
  
  def button_submit(text)
	  submit_button path_icons("tick.png"), i18n_button_str(text)
	end
	
	def button_edit(path,name)
	  link_button path_image("application_edit.png"), i18n_button_str("edit_"+name), path
	end
  
  #IMAGES_PATH
  def path_icons(image)
    "web-app-theme/icons/#{image}"
  end
  
  def path_image(image)
    "web-app-theme/icons/#{image}"
  end
  
  #LINKS
  def link_actions(name,path)
    link_to i18n_link_str(name),  path
  end
  
  def link_back(path)
  	link_to i18n_link_str('cancel'), path, :class => "text_button_padding link_button"
  end
  
  # Simplificar os botões normais de acção e controlo
  def link_button(img_src, text, options = {})
    link_to image_tag(img_src)+text, options, :class => "button"
  end
  
  def link_icons(image, title, path)
    raw "#{link_to raw("#{image_tag(path_image(image),:title => "#{i18n_icon_str(title)}")}"),  path}" 
  end
  
  def pretty_date(date)
    date.strftime("%d-%m-%Y") unless date.blank?
  end
  
  #I18N
  def i18n_link_str(attribute)
    t("links.#{attribute}")
  end
  
  def i18n_title_str(attribute)
    t("titles.#{attribute}")
  end
  
  def i18n_button_str(attribute)
    t("buttons.#{attribute}")
  end
  
  def i18n_icon_str(attribute)
    t("icons.#{attribute}")
  end
  
  def i18n_word_str(attribute)
    t("words.#{attribute}")
  end
  
end
