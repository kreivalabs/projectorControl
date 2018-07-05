-- @file: allControls.applescript
-- @author: Brendan Hogan
-- @version: 1.0.0
-- @update: 2018-07-05

-- Version history

-- ver. 1.0.0 : initial build

-- Panasonic projector control scripts to power on, open/close the shutter
-- and set to standby mode.

-- to use in QLab: copy the text between the <Script> and </Script> notations
-- and paste it into a Script cue within your workspace, one cue per projector action.
-- Update the user variables as necessary to match your projector settings.

-- OPEN the Shutter:
-- <Script>

-- user variables. Adjust as necessary

set userAddress to "192.168.168.210" -- the projector's IP address, in quotes. update as necessary
set userName to "admin1" -- the administrative user name, in quotes. update as necessary
set userPass to "production" -- the projector's password, in quotes. update as necessary

-- do not change anything below the line
--------------------

-- main script
set myFile to (POSIX path of (path to temporary items)) & "curl_downloaded_file.xml"
do shell script "curl -L " & "http://" & userName & ":" & userPass & "@" & userAddress & "/cgi-bin/sd95.cgi?cm=0200a1910203" & " -o " & myFile


-- </Script>

-- CLOSE the Shutter:
-- <Script>

-- user variables. Adjust as necessary

set userAddress to "192.168.168.210" -- the projector's IP address, in quotes. update as necessary
set userName to "admin1" -- the administrative user name, in quotes. update as necessary
set userPass to "production" -- the projector's password, in quotes. update as necessary

-- do not change anything below the line
--------------------

-- main script
set myFile to (POSIX path of (path to temporary items)) & "curl_downloaded_file.xml"
do shell script "curl -L " & "http://" & userName & ":" & userPass & "@" & userAddress & "/cgi-bin/sd95.cgi?cm=0200a1910103" & " -o " & myFile


-- </Script>


-- Projector ON:
-- <Script>

-- user variables. Adjust as necessary

set userAddress to "192.168.168.210" -- the projector's IP address, in quotes. update as necessary
set userName to "admin1" -- the administrative user name, in quotes. update as necessary
set userPass to "production" -- the projector's password, in quotes. update as necessary

-- do not change anything below the line
--------------------

-- main script
set myFile to (POSIX path of (path to temporary items)) & "curl_downloaded_file.xml"
do shell script "curl -L " & "http://" & userName & ":" & userPass & "@" & userAddress & "/cgi-bin/sd95.cgi?cm=0200a13d0103" & " -o " & myFile

-- </Script>


-- Projector STANDBY:
-- <Script>

-- user variables. Adjust as necessary

set userAddress to "192.168.168.210" -- the projector's IP address, in quotes. update as necessary
set userName to "admin1" -- the administrative user name, in quotes. update as necessary
set userPass to "production" -- the projector's password, in quotes. update as necessary

-- do not change anything below the line
--------------------

-- main script
set myFile to (POSIX path of (path to temporary items)) & "curl_downloaded_file.xml"
do shell script "curl -L " & "http://" & userName & ":" & userPass & "@" & userAddress & "/cgi-bin/sd95.cgi?cm=0200a13d0203" & " -o " & myFile

-- </Script>