$(

#adb shell am start -n com.android.chrome/org.chromium.chrome.browser.incognito.IncognitoTabLauncher

#adb shell am start -a android.intent.action.VIEW -d http://www.youtube.com --ez create_new_tab true
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main "https://m.youtube.com"&&

sleep 2

# press profile button
adb shell input tap 1008 403

sleep 1

# press sign in
adb shell input tap 411 560

sleep 1

# press "Create Account"
adb shell input tap 199 1435

sleep 1

# press "for myself"
adb shell input tap 199 1575

# sleep 2

# adb shell input tap 506 875

# sleep 1

# adb shell input tap 832 629

# sleep 1

# adb shell input tap 269 1425

# sleep 1

# adb shell input tap 305 1567

# sleep 0.5&&

sleep 0.5&&

# Click anywhere
adb shell input tap 1038 449&&

sleep 0.5&&

# Swip up
adb shell input swipe 300 300 500 1000 &&

sleep 0.5&&

# press "first name" tab to input
adb shell input tap 540 833&&

# input
adb shell input text "Patrick"&&

adb shell input tap 1040 833&&

sleep 0.5&&

# press "last name" tab to input
adb shell input tap 540 1000&&

# input
adb shell input text "Chadwick"&&

adb shell input tap 1040 1000&&

sleep 0.5&&

# scroll down
adb shell input swipe 250 800 250 400 300 &&

sleep 0.5&&

# press "email" tab to input
adb shell input tap 540 900

sleep 0.5

# input
# between 6 and 30 characters long
adb shell input text "Patrick.Tancheon"

adb shell input tap 1040 900

sleep 0.5

# scroll down
adb shell input swipe 250 800 250 400 300 

sleep 0.5

# press "password" tab to input
adb shell input tap 540 1130

sleep 0.5

# input (use 8 or more characters with mix of letters, numbers, and symbols)
adb shell input text "crazypatrickboi888"

adb shell input tap 1040 930

sleep 0.5

# press "confirm" tab to input
adb shell input tap 540 1280

# input
adb shell input text "crazypatrickboi888"

adb shell input tap 1040 963

sleep 0.5

# press "Next" tab to input
adb shell input tap 884 1769

sleep 1.5

# scroll down
adb shell input swipe 250 800 250 400 300 

sleep 0.5

# press anywhere
adb shell input tap 1039 444

sleep 0.5

# press "Phone number" tab to input
adb shell input tap 670 767

# input phone number
adb shell input text "+971585993868"
# adb shell input text "abc"

# press anywhere
adb shell input tap 1039 444

sleep 0.5

adb shell input tap 912 1145

sleep 20

# # press "before"
# adb shell input tap 140 982

# sleep 0.5

# # scroll down
# adb shell input swipe 250 800 250 400 300 

# # scroll up for no reason
# adb shell input swipe 50 50 80 120

# # scroll down for no reason
# adb shell input swipe 50 50 80 120

# # press "create new gmeail address"
# adb shell input tap 501 907

# # # press username
# # adb shell input tap 578 91021

# sleep 0.5

# # input username
# adb shell input text "Greatest.Patwickaa"

# sleep 0.5 

# adb shell input keyevent 67

# adb shell input keyevent 67

# # press anywhere
# adb shell input tap 1039 444

# # press "password" tab to input
# adb shell input tap 540 1130

# sleep 0.5

# # input (use 8 or more characters with mix of letters, numbers, and symbols)
# adb shell input text "downlowpat897"

# adb shell input tap 1040 930

# sleep 0.5

# # press "confirm" tab to input
# adb shell input tap 540 1280

# # input
# adb shell input text "downlowpat899"

# # press anywhere
# adb shell input tap 1039 444

# sleep 0.5

# # press "next" tab to input
# adb shell input tap 903 1751


# sleep 0.5 

# # input
# adb shell input text "downlowpat897"

# # press anywhere
# adb shell input tap 1039 444

# # press "next" tab to input
# adb shell input tap 903 1751

### Once you get to "USER1, welcome to Google"
adb shell input tap 197 1452

sleep 0.5

# press any Month
adb shell input tap 532 $(((RANDOM%2130)+325))

# press Day
adb shell input tap 534 1448

sleep 0.5

# input any random date in a month
adb shell input text $(((RANDOM%30)+1))

sleep 0.5

# press anywhere
adb shell input tap 1040 412


# press Year
adb shell input tap 861 1109

sleep 0.5

# input year
adb shell input text $(((RANDOM%29)+1980))

# press gender
adb shell input tap 584 1361

sleep 0.5

# click any gender option
adb shell input tap 532 $(((RANDOM%700)+758))

# press Next
adb shell input tap 908 1754

)