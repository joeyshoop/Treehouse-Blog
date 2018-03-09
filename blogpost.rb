require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get('http://blog.teamtreehouse.com/')
driver.find_element(:link, "Continue reading").click()
title = driver.find_element(:class, "post-title").text
copy = driver.find_element(:class, "skinny-read").text
file = File.open("blogpost.txt", "w")
file.puts title
file.puts ""
file.puts copy
file.close
