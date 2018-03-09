require 'selenium-webdriver'

driver = Selenium::WebDriver.for :firefox
driver.get('http://blog.teamtreehouse.com/')
driver.find_element(:link, "Continue reading").click()
