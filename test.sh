# Start YouTube on chrome mobile
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main "https://m.youtube.com"

# go straight to sign in page
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main "https://accounts.google.com/signup/v2/webcreateaccount?service=youtube&continue=https%3A%2F%2Faccounts.google.com%2FManageAccount%3Fnc%3D1&dsh=S1443845758%3A1639049190006075&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp&nogm=true"

# To open the YouTube search bar
adb shell am start -a com.google.android.youtube.action.open.search -n com.google.android.youtube/com.google.android.apps.youtube.app.WatchWhileActivity

# To input anything on the search bar
adb shell input text "any search query"

# 3870
# 635

# press enter
adb shell input keyevent 66

# swipe down
adb shell input swipe 500 500 500 800

#menu
adb shell input keyevent 82

# open chrome application
adb shell monkey -p com.android.chrome -c android.intent.category.LAUNCHER 1

#get package name
adb shell pm list packages | grep youtube

# youtube package name: com.google.android.youtube

# launch youtube
adb shell monkey -p com.google.android.youtube -c android.intent.category.LAUNCHER 1

#get touch
adb shell getevent | grep -e "0035" -e "0036"

# sending SMS text message (doesn't seem to work???)
adb shell service call isms 7 i32 0 s16 "com.android.mms.service" s16 "+971585993868" s16 "null" s16 "'Hey you'" s16 "null" s16 "null"

# Making a call
adb shell am start -a android.intent.action.CALL -d tel:+971585993868

############
adb shell am start -n com.android.chrome/com.google.android.apps.chrome.Main "https://m.youtube.com"

adb shell input tap 1003 351

adb shell input tap 518 573

adb shell input tap 269 1425

adb shell input tap 305 1567

# press "first name" tab to input
adb shell input tap 540 833

# input
adb shell input text "a"

# press "last name" tab to input
adb shell input tap 540 1000

# input
adb shell input text "b"

# scroll down
adb shell input swipe 250 800 250 400 300 

# press "last name" tab to input
adb shell input tap 540 900

# input
# between 6 and 30 characters long
adb shell input text "abcdef1"

# press "password" tab to input
adb shell input tap 540 1150

# input (use 8 or more characters with mix of letters, numbers, and symbols)
adb shell input text "pwd123"

# press "confirm" tab to input
adb shell input tap 540 1435

# input
adb shell input text "pwd123"
############


'''
0 -->  "KEYCODE_UNKNOWN" 
1 -->  "KEYCODE_MENU" 
2 -->  "KEYCODE_SOFT_RIGHT" 
3 -->  "KEYCODE_HOME" 
4 -->  "KEYCODE_BACK" 
5 -->  "KEYCODE_CALL" 
6 -->  "KEYCODE_ENDCALL" 
7 -->  "KEYCODE_0" 
8 -->  "KEYCODE_1" 
9 -->  "KEYCODE_2" 
10 -->  "KEYCODE_3" 
11 -->  "KEYCODE_4" 
12 -->  "KEYCODE_5" 
13 -->  "KEYCODE_6" 
14 -->  "KEYCODE_7" 
15 -->  "KEYCODE_8" 
16 -->  "KEYCODE_9" 
17 -->  "KEYCODE_STAR" 
18 -->  "KEYCODE_POUND" 
19 -->  "KEYCODE_DPAD_UP" 
20 -->  "KEYCODE_DPAD_DOWN" 
21 -->  "KEYCODE_DPAD_LEFT" 
22 -->  "KEYCODE_DPAD_RIGHT" 
23 -->  "KEYCODE_DPAD_CENTER" 
24 -->  "KEYCODE_VOLUME_UP" 
25 -->  "KEYCODE_VOLUME_DOWN" 
26 -->  "KEYCODE_POWER" 
27 -->  "KEYCODE_CAMERA" 
28 -->  "KEYCODE_CLEAR" 
29 -->  "KEYCODE_A" 
30 -->  "KEYCODE_B" 
31 -->  "KEYCODE_C" 
32 -->  "KEYCODE_D" 
33 -->  "KEYCODE_E" 
34 -->  "KEYCODE_F" 
35 -->  "KEYCODE_G" 
36 -->  "KEYCODE_H" 
37 -->  "KEYCODE_I" 
38 -->  "KEYCODE_J" 
39 -->  "KEYCODE_K" 
40 -->  "KEYCODE_L" 
41 -->  "KEYCODE_M" 
42 -->  "KEYCODE_N" 
43 -->  "KEYCODE_O" 
44 -->  "KEYCODE_P" 
45 -->  "KEYCODE_Q" 
46 -->  "KEYCODE_R" 
47 -->  "KEYCODE_S" 
48 -->  "KEYCODE_T" 
49 -->  "KEYCODE_U" 
50 -->  "KEYCODE_V" 
51 -->  "KEYCODE_W" 
52 -->  "KEYCODE_X" 
53 -->  "KEYCODE_Y" 
54 -->  "KEYCODE_Z" 
55 -->  "KEYCODE_COMMA" 
56 -->  "KEYCODE_PERIOD" 
57 -->  "KEYCODE_ALT_LEFT" 
58 -->  "KEYCODE_ALT_RIGHT" 
59 -->  "KEYCODE_SHIFT_LEFT" 
60 -->  "KEYCODE_SHIFT_RIGHT" 
61 -->  "KEYCODE_TAB" 
62 -->  "KEYCODE_SPACE" 
63 -->  "KEYCODE_SYM" 
64 -->  "KEYCODE_EXPLORER" 
65 -->  "KEYCODE_ENVELOPE" 
66 -->  "KEYCODE_ENTER" 
67 -->  "KEYCODE_DEL" 
68 -->  "KEYCODE_GRAVE" 
69 -->  "KEYCODE_MINUS" 
70 -->  "KEYCODE_EQUALS" 
71 -->  "KEYCODE_LEFT_BRACKET" 
72 -->  "KEYCODE_RIGHT_BRACKET" 
73 -->  "KEYCODE_BACKSLASH" 
74 -->  "KEYCODE_SEMICOLON" 
75 -->  "KEYCODE_APOSTROPHE" 
76 -->  "KEYCODE_SLASH" 
77 -->  "KEYCODE_AT" 
78 -->  "KEYCODE_NUM" 
79 -->  "KEYCODE_HEADSETHOOK" 
80 -->  "KEYCODE_FOCUS" 
81 -->  "KEYCODE_PLUS" 
82 -->  "KEYCODE_MENU" 
83 -->  "KEYCODE_NOTIFICATION" 
84 -->  "KEYCODE_SEARCH" 
85 -->  "TAG_LAST_KEYCODE"
'''