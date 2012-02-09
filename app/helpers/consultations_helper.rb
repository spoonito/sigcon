module ConsultationsHelper
  
  def link_consultations
    link_actions('consultations', consultations_path)
  end
  
  def link_list_consultations
    link_actions('list_consultations',consultations_path)
  end
  
  def link_new_consultation
    link_actions('new_consultation',new_consultation_path)
  end
  
  def link_edit_consultation
	  link_actions("edit_consultation", edit_consultation_path(@consultation))
	end
	
	def link_show_consultation
    link_actions("show_consultation", consultation_path(@consultation))  
  end
	
	def i18n_consultation_hint_str(attribute) 
    t("hints.models.consultation.#{attribute}")
  end
  
  def i18n_consultation_str(attribute)
    t("activerecord.attributes.consultation.#{attribute}")
  end
  
  def icon_show_consultation(consultation)
    link_icons("zoom.png","show_consultation",consultation_path(consultation))
  end
  
  def icon_edit_consultation(consultation)
    	link_icons("pencil.png","edit_consultation",edit_consultation_path(consultation))
  end
  
end
