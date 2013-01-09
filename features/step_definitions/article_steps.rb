

Given /^I have articles titled (.+)$/ do |titles|
  titles.split(', ').each do |title|
    Article.create!(:title => title)
  end
end

When /^I go to the list of articles$/ do
  visit articles_path
end 

Given /^I have no articles$/ do
  Article.delete_all
end

Then /^I should have ([0-9]+) articles?$/ do |count|
  Article.count.should == count.to_i
end

Given /^I am on the list of articles$/ do
  Article.all
end

Then /^I should see "([^\"]*)"$/ do |text|
   page.should have_content(text)
end

When /^I follow "([^\"]*)"$/ do |link|
  click_link(link)
end
