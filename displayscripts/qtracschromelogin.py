# Import Selenium, supported modules, and time.sleep()
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
import time

# define variables for opening firefox and passing login credentials
driver = webdriver.Chrome()
driver.get('https://services.omnitracs.com/mapallWeb/fleetMap.do')
driver.maximize_window()
time.sleep(5)
companyid = driver.find_element_by_name("companyName")
username = driver.find_element_by_name("userName")
password = driver.find_element_by_name("j_password")

# pass the login information to qtracs
# you will need to fill in the login info in the parenthesis
# for comapnyid, username, and password
while True:
    try:
        time.sleep(5)
        companyid.send_keys("") # add company ID here
        username.send_keys("") # add username here
        password.send_keys("") # add password here
        driver.find_element_by_name("loginButton").click()
        print("Login successful")
        break
    except:
        print("Login failed")
        continue

# adjust the map settings
# comment out this section if you do not want the map zoom
# to be adjusted to show the actual truck icon
print("Adjusting map")
time.sleep(10)
driver.find_element_by_id("zoomInLink").click()
time.sleep(10)
driver.find_element_by_id("zoomInLink").click()

# this zoom adjustment is still being worked on
# adjust the web page settings
#time.sleep(5)
#driver.execute_script("document.body.style.zoom='80%'")
