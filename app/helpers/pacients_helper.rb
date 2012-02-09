module PacientsHelper
  
  def link_pacients
    link_actions('pacients', pacients_path)
  end
  
  def link_list_pacients
    link_actions('list_pacients',pacients_path)
  end
  
  def link_new_pacient
    link_actions('new_pacient',new_pacient_path)
  end
  
  def link_edit_pacient
	  link_actions("edit_pacient", edit_pacient_path(@pacient))
	end
	
	def link_show_pacient
    link_actions("show_pacient", pacient_path(@pacient))  
  end
	
	def i18n_pacient_hint_str(attribute) 
    t("hints.models.pacient.#{attribute}")
  end
  
  def i18n_pacient_str(attribute)
    t("activerecord.attributes.pacient.#{attribute}")
  end
  
  def icon_show_pacient(pacient)
    link_icons("zoom.png","show_pacient",pacient_path(pacient))
  end
  
  def icon_edit_pacient(pacient)
    	link_icons("pencil.png","edit_pacient",edit_pacient_path(pacient))
  end
  
end
