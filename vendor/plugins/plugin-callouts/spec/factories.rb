Factory.define :callout do |f|
  f.title 'Find out more' 
  f.subtitle 'More about Paul'
  f.url '/find-out-more'
  f.callout { File.open( File.join(CmsEngine::ROOT,'spec/fixtures/images/mm.jpg')) }
end