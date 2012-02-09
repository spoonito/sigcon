module FamiliesHelper
  
  def link_families
    link_actions('families', families_path)
  end
  
  def link_list_families
    link_actions('list_families',families_path)
  end
  
  def link_new_family
    link_actions('new_family',new_family_path)
  end
  
  def link_edit_family
	  link_actions("edit_family", edit_family_path(@family))
	end
	
	def link_show_family
    link_actions("show_family", family_path(@family))  
  end
	
	def i18n_family_hint_str(attribute) 
    t("hints.models.family.#{attribute}")
  end
  
  def i18n_family_str(attribute)
    t("activerecord.attributes.family.#{attribute}")
  end
  
  def icon_show_family(family)
    link_icons("zoom.png","show_family",family_path(family))
  end
  
  def icon_edit_family(family)
    	link_icons("pencil.png","edit_family",edit_family_path(family))
  end
  
end
