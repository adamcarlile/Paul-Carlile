CmsEngine.override_page_type :contact_form

class ContactForm < Page
  
  self.can_have_children = false
  self.admin_template    = BasicPage.admin_template

end