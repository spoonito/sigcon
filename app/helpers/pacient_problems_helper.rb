module PacientProblemsHelper
  
  def link_pacient_problems
    link_actions('pacient_problems', pacient_problems_path)
  end
  
  def link_list_pacient_problems
    link_actions('list_pacient_problems',pacient_problems_path)
  end
  
  def link_new_pacient_problem
    link_actions('new_pacient_problem',new_pacient_problem_path)
  end
  
  def link_edit_pacient_problem
	  link_actions("edit_pacient_problem", edit_pacient_problem_path(@pacient_problem))
	end
	
	def link_show_pacient_problem
    link_actions("show_pacient_problem", pacient_problem_path(@pacient_problem))  
  end
	
	def i18n_pacient_problem_hint_str(attribute) 
    t("hints.models.pacient_problem.#{attribute}")
  end
  
  def i18n_pacient_problem_str(attribute)
    t("activerecord.attributes.pacient_problem.#{attribute}")
  end
  
  def icon_show_pacient_problem(pacient_problem)
    link_icons("zoom.png","show_pacient_problem",pacient_problem_path(pacient_problem))
  end
  
  def icon_edit_pacient_problem(pacient_problem)
    	link_icons("pencil.png","edit_pacient_problem",edit_pacient_problem_path(pacient_problem))
  end
  
end
