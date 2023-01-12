# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Chrometest' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'chrometest' do
    @driver.get('http://localhost:3000/')
    @driver.find_element(:link_text, 'New user').click
    sleep(0.5)
    @driver.find_element(:id, 'user_username').click
    @driver.find_element(:id, 'user_username').send_keys('ty')
    @driver.find_element(:id, 'user_email').click
    @driver.find_element(:id, 'user_email').send_keys('ty@gmail.com')
    @driver.find_element(:id, 'user_password').click
    @driver.find_element(:id, 'user_password').send_keys('ty')
    @driver.find_element(:name, 'commit').click
    sleep(5)
    @driver.find_element(:id, 'email').click
    @driver.find_element(:id, 'email').send_keys('ty@gmail.com')
    @driver.find_element(:id, 'password').click
    @driver.find_element(:id, 'password').send_keys('ty')
    @driver.find_element(:name, 'commit').click
    sleep(1)
    @driver.find_element(:id, 'digit').click
    @driver.find_element(:id, 'digit').send_keys('3')
    @driver.find_element(:name, 'commit').click
    sleep(0.5)
    expect(@driver.find_element(:css, 'tr:nth-child(2) > td:nth-child(2)').text).to eq('153')
    @driver.find_element(:css, 'body').click
    sleep(0.5)
    @driver.find_element(:link_text, 'To userlist').click
    sleep(0.5)
    @driver.find_element(:css, 'button').click
  end
end