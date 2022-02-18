from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.support.ui import Select
import time
import random

# https://accounts.google.com/signup/v2/webcreateaccount?service=youtube&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Den%26next%3Dhttps%253A%252F%252Fwww.youtube.com%252F&hl=en&dsh=S704728177%3A1644824199263348&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp&nogm=true

chrome_options = Options()
chrome_options.add_argument("--incognito")

driver = webdriver.Chrome(executable_path="/Users/sangjinlee/Desktop/Capstone/chromedriver", options=chrome_options)
driver.get('https://accounts.google.com/signup/v2/webcreateaccount?service=youtube&continue=https%3A%2F%2Fwww.youtube.com%2Fsignin%3Faction_handle_signin%3Dtrue%26app%3Ddesktop%26hl%3Den%26next%3Dhttps%253A%252F%252Fwww.youtube.com%252F&hl=en&dsh=S704728177%3A1644824199263348&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp&nogm=true')

months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
genders = ['Male', 'Female']

fname = driver.find_element_by_id("firstName")
fname.send_keys('Patrick')
time.sleep(5)

lname = driver.find_element_by_id("lastName")
lname.send_keys('Chadwick')
time.sleep(5)

createnew = driver.find_element_by_xpath('//*[@id="view_container"]/div/div/div[2]/div/div[1]/div/form/span/section/div/div/div[2]/div[3]/div/div/button/span')
createnew.click()
time.sleep(5)

usrname = driver.find_element_by_id("username")
usrname.send_keys('greatestt.chadd')
time.sleep(5)

pwd = driver.find_element_by_name("Passwd")
pwd.send_keys('leggopat3214')
time.sleep(5)

confirm = driver.find_element_by_name("ConfirmPasswd")
confirm.send_keys('leggopat3214')
time.sleep(5)

nextbutton = driver.find_element_by_xpath('//*[@id="accountDetailsNext"]/div/button')
nextbutton.click()
time.sleep(5)

phonenumber = driver.find_element_by_id("phoneNumberId")
phonenumber.send_keys('+12013618493')
time.sleep(5)

nextbutton2 = driver.find_element_by_xpath('//*[@id="view_container"]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button')
nextbutton2.click()
time.sleep(20) # Verify OTP

driver.find_element_by_id('phoneNumberId').clear()
time.sleep(4)

select_month = Select(driver.find_element_by_id('month'))
select_month.select_by_visible_text(random.choice(months))
time.sleep(4)

day = driver.find_element_by_id('day')
day.send_keys(random.choice(range(1, 30)))
time.sleep(4)

year = driver.find_element_by_id('year')
year.send_keys(random.choice(range(1960, 2010)))
time.sleep(4)

select_gender = Select(driver.find_element_by_id('gender'))
select_gender.select_by_visible_text(random.choice(genders))
time.sleep(4)

nextbutton3 = driver.find_element_by_xpath('//*[@id="view_container"]/div/div/div[2]/div/div[2]/div/div[1]/div/div/button/div[3]')
nextbutton3.click()


