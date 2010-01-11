Given /^I have callouts called (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Callout.create!(:title => title)
  end
end

When /^I upload a (.+) image located at (.+)$/ do |format, path|
  attach_file(:image, File.join(RAILS_ROOT, 'features', path), "image/#{format}")
end

Given /^the following (.+) records?$/ do |factory, table|  
  table.hashes.each do |hash|  
    Factory(factory, hash)  
  end  
end