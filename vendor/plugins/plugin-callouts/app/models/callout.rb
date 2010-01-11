class Callout < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :callout
  
  default_scope :order => 'position'  
  
  acts_as_list
  
  attachment_options = {
     :url => "/upload/:rails_env/callouts/:id/:style_:basename.:extension",
     :path => ":rails_root/public/upload/:rails_env/callouts/:id/:style_:basename.:extension",
     :styles => { 
       :standard   => "180x85#" 
     }
   }
   
  has_attached_file :callout, attachment_options
   
  def to_s
    name
  end
  
end
