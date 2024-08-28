#!/bin/bash

# Define color codes
RED='\033[31m'
GREEN='\033[32m'
BLUE='\033[34m'
WHITE='\033[37m'
YELLOW='\033[33m'
RESET='\033[0m'

#======================================================================================ping

# Prompt the user to input the IP address or domain to ping
# ANSI color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

# Prompt the user to input the IP address or domain to ping
read -p "To get Access into Dark Web, submit the IP-Target address or domain you want to ping: " target

# Run the ping command 5 times and apply color
ping -c 20 "$target" | awk -v red="$RED" -v nc="$NC" '{print red $0 nc}'
echo
sleep 5
#======================================================================================lynis
#!/bin/bash

# ANSI color codes
RED='\033[0;31m'
NC='\033[0m' # No Color

# Function to print centered text
print_centered() {
    local text="$1"
    local term_width=$(tput cols)  # Get terminal width
    local text_length=${#text}
    local padding=$(( (term_width - text_length) / 2 ))  # Calculate padding
    local padded_text=$(printf "%${padding}s%s" "" "$text")  # Create padded text

    echo -e "${RED}${padded_text}${NC}"
}

# Function to print a line of equal signs
print_line() {
    local term_width=$(tput cols)  # Get terminal width
    local line=$(printf "%${term_width}s" "" | tr ' ' '=')
    echo -e "${RED}${line}${NC}"
}

# Function to print ASCII art text
print_large_text() {
    local text="$1"
    echo -e "${RED}"
    figlet -w $(tput cols) "$text" 
    echo -e "${NC}"
}

# Print the top line
print_line

# Print large welcome message
print_large_text "Welcome to the Dark WEB ACCESS !"

# Print the bottom line
print_line

# Center the prompt and options
print_centered "1. Privacy and Anonymity Services"
print_centered "Anonymous Browsing: Tools like Tor (The Onion Router) are used for private and anonymous browsing."
print_centered "Secure Communication: Encrypted messaging services and email providers."
print_centered "Whistleblowing Platforms: Secure channels for whistleblowers to share information without revealing their identity."
echo

print_centered "2. Marketplaces"
print_centered "Legitimate Marketplaces: Some are used for legal goods and services, such as rare books or collectibles."
print_centered "Illegal Marketplaces: Often involve the sale of illegal items, including drugs, weapons, counterfeit currencies, stolen data, and hacking services."
echo

print_centered "3. Forums and Communities"
print_centered "Interest-Based Communities: Groups focused on niche interests or hobbies."
print_centered "Criminal Forums: Discussions about illegal activities, including hacking, fraud, and cybercrime."
echo

print_centered "4. Hacking and Cybercrime"
print_centered "Hacking Services: Offers to perform hacking tasks or exploit vulnerabilities."
print_centered "Stolen Data: Sale of compromised personal data, credit card information, and login credentials."
echo

print_centered "5. Banking Systems Databases"
print_centered "Prestiqious and Professional Handling on: Getting access into online database banking-systems, Specific helping in collecting the database banking-systems audit and Stolen Customers Database."
echo

print_centered "6. Political Activism"
print_centered "Political Dissidents: Platforms for political dissidents or activists operating in restrictive regimes."
print_centered "Protests and Advocacy: Information on organizing protests or advocacy efforts."
echo

print_centered "7. Financial Services"
print_centered "Cryptocurrency Services: Exchange platforms and services for cryptocurrencies, often with a focus on privacy."
print_centered "Money Laundering: Services to help launder money or obscure financial transactions."
echo

print_centered "8. Content"
print_centered "Banned or Censored Material: Some sites offer access to content that is censored or banned in certain countries, such as sensitive news reports or controversial documents."
echo

print_centered "Key Points to Note:"
print_centered "Legitimate Use: While the Dark Web has many illegal activities, it also provides valuable services for those needing anonymity, such as journalists and activists in oppressive regimes."
print_centered "Risks: Engaging with illegal content or services on the Dark Web can lead to severe legal consequences and pose significant security risks."
echo

print_centered "Caution:"
print_centered "Navigating the Dark Web can be risky & often involves interactions with individuals & organizations that may engage in illegal activities. It is crucial to approach it with caution and awareness of the legal and ethical implications."

# Reset color for input prompt
echo -e "${NC}Enter the number of your choice (1-8): "
read choice
sleep 5
#====================================================================progress bar
#!/bin/bash

# ANSI color codes
ORANGE='\033[38;5;208m'  # Bright orange color
NC='\033[0m'             # No Color

# Function to display a progress bar
show_progress() {
    local progress=$1
    local total=100  # Length of the progress bar
    local filled=$((progress * total / 100))
    local unfilled=$((total - filled))
    
    # Display progress bar
    printf "["
    for ((i=0; i<filled; i++)); do
        printf "${ORANGE}█${NC}"
    done
    for ((i=0; i<unfilled; i++)); do
        printf "░"  # Empty blocks
    done
    printf "] %d%%\r" "$progress"
}

# Simulate progress
for i in {0..100}; do
    sleep 0.05
    show_progress $i
done

# Print message after progress reaches 100%
echo -e "\n${ORANGE}Access Granted!${NC}"

#======================================================================================
# Example of a hard-coded curl command
URL="https://www.bankmandiri.co.id"
OUTPUT_FILE="output.html"

echo "Fetching content from $URL..."
curl -o "$OUTPUT_FILE" "$URL"

echo "Content saved to $OUTPUT_FILE."


# Prompt the user for the URL
echo -n "Enter the URL to fetch: "
read URL

# Optional: Prompt for any additional curl options
echo -n "Enter any additional curl options (or press Enter for none): "
read CURL_OPTIONS

# Execute the curl command with the provided inputs
echo "Running curl with the following command:"
echo "curl $CURL_OPTIONS $URL"
curl $CURL_OPTIONS "$URL"

# Prompt the user for the full curl command
echo -n "Enter your curl command: "
read CURL_COMMAND

# Execute the provided curl command
echo "Running the provided curl command..."
eval "$CURL_COMMAND"

#=================================
# Define the target URL
url="http://45.60.158.31"

# Run dirb with additional options like proxy, user-agent, etc.
dirb "$url" -p http://45.60.158.31:8080 -a "Mozilla/5.0" -r -o dirb_output.txt
#========================================================================================dirb
# Function to run nmap scan
run_nmap() {
    echo "Scanning Target..."
    nmap -vvv www.bankmandiri.co.id  # Adjust the target network as needed
    echo "Target IPServer Scan completed."
}

# Run nmap scan before proceeding
run_nmap
#000000000000000000000000000000000000000000000000000000000000000000000000000000000000nmapabove
# Define URLs and credentials
WEBSITE_URL="https://www.bankmandiri.co.id"
LOGIN_URL="https://www.bankmandiri.co.id/login"
USERNAME="kongali1720"
PASSWORD="your_password"
COOKIE_FILE="cookies.txt"
PROTECTED_URL="https://www.bankmandiri.co.id/protected"

# Fetch the homepage
echo "Fetching homepage..."
curl -o homepage.html $WEBSITE_URL=www.bankmandiri.co.id
echo "Homepage saved as homepage.html"

# Log in to the website
echo "Logging in..."
curl -c $COOKIE_FILE -d "username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL=www.bankmandiri.co.id
echo "Logged in and cookies saved to $COOKIE_FILE"
#000000000000000000000000000000000000000000000000000000000000000000 curl

# Typewriter effect function
typewrite() {
    local DELAY=0.03
    for sentence in "$@"; do
        for (( i=0; i<${#sentence}; i++ )); do
            echo -n "${sentence:$i:1}"
            sleep "$DELAY"
        done
        echo ""
        sleep "$DELAY"
    done
}

# Function to print colored text
color_text() {
    echo -e "${1}${2}${RESET}"
}

# Loading animation function
dot_loading() {
    local duration=$1
    local interval=0.5
    local max_dots=10
    local end_time=$((SECONDS + duration))
    
    while [ $SECONDS -lt $end_time ]; do
        for (( i=0; i<=max_dots; i++ )); do
            echo -ne "\rLoading$(printf '.%.0s' $(seq 1 $i))$(printf ' %.0s' $(seq $i $max_dots))"
            sleep "$interval"
        done
    done
    echo -ne "\rLoading$(printf '.%.0s' $(seq 1 $max_dots))\n"
}

# Progress bar function
progress_bar() {
    local iteration=$1
    local total=$2
    local length=50
    local fill="█"
    
    local percent=$((iteration * 100 / total))
    local filled_length=$((length * iteration / total))
    
    printf "\rProgress: |"
    for (( i=0; i<filled_length; i++ )); do
        printf "$fill"
    done
    for (( i=filled_length; i<length; i++ )); do
        printf " "
    done
    printf "| %s%%" "$percent"
}

# Get current date and time
current_date_time=$(date "+%Y-%m-%d %H:%M:%S")
#============================================================================================================
# Define the text content
text="----------Welcome to Cloud Cyber Security GlobalServer Software ©2024-All Rights Reserved.-----------"
# Define the background color code (yellow) and text color code (white)
background_color_code="\033[43m"  # Yellow background
text_color_code="\033[97m"         # White text

# Define the reset code (to reset the formatting)
reset_code="\033[0m"

# Create the block-colored text
block_colored_text="${background_color_code}${text_color_code}${text}${reset_code}"

# Print the block-colored text with surrounding lines for emphasis
echo "====================================================================================================="
echo -e "$block_colored_text"
echo "====================================================================================================="
#============================================================================================================

# User input for login
GREEN="\033[42m"  # Green background
RESET="\033[0m"   # Reset formatting
read -p "Enter Username: " username
if [ "$username" == "admin" ]; then
    sleep 2
fi

read -p "Enter Password: " password
sleep 1

dot_loading 5
# Example message to display after the progress bar completes
echo -e "${GREEN}ACCESS GRANTED!${RESET}"
sleep 3
# ===========================================================================================================
# Define the text content
text="------------------------------------------- WELCOME ADMIN ------------------------------------------ "

# URL of the FTP server and the file to download
URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"

# Download the file
wget "$URL"


# URL of the FTP server and the file to download
URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"
# Download files listed in urls.txt

# FTP server details
FTP_URL="ftp://sso.corp.bankmandiri.co.id/path/to/file"
DOWNLOAD_DIR="/path/to/download/directory"

# Download the file to the specified directory
wget -P "$DOWNLOAD_DIR" "$FTP_URL"

wget -i urls.txt
# Download the file
wget "$URL"
#0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000wget ftp
# Define the background color code (yellow) and text color code (white)
background_color_code="\033[43m"  # Yellow background
text_color_code="\033[97m"         # White text

# Define the reset code (to reset the formatting)
reset_code="\033[0m"

# Create the block-colored text
block_colored_text="${background_color_code}${text_color_code}${text}${reset_code}"

# Print the block-colored text with surrounding lines for emphasis
echo "====================================================================================================="
echo -e "$block_colored_text"
echo "====================================================================================================="
echo "https://www.bankmandiri.co.id/sso.corp.bankmandiri.co.id<<<clients>>>database<<<<bruteforce//connecting... $current_date_time"
sleep 5
echo "https://www.bankmandiri.co.id/contentAsset/raw-data/8976976865/cipher98709-oiubjk(lkjgh86ro7uyhlui65)- connecting...!!!"
sleep 10

#===========================================================================================================
# Define colors
GREEN="\033[42m"  # Green background
RESET="\033[0m"   # Reset formatting

# Function to display the progress bar
progress_bar() {
    local progress=$1
    local total=$2
    local bar_length=100
    local filled_length=$(( (progress * bar_length) / total ))
    local empty_length=$(( bar_length - filled_length ))
    
    # Create the progress bar string
    local bar=""
    for (( i=0; i<filled_length; i++ )); do
        bar+="${GREEN}█${RESET}"
    done
    for (( i=0; i<empty_length; i++ )); do
        bar+=" "
    done

    # Print the progress bar
    printf "\r[${bar}] %d%%" $(( (progress * 100) / total ))
}

# Progress bar example
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.05
done
echo

# Example message to display after the progress bar completes
echo -e "${GREEN}CONNECTED!${RESET}"
echo
#===========================================================================================================
# Progress bar example
#total=100
#or i in $(seq 0 $total); do
#    progress_bar "$i" "$total"
#    sleep 0.5
#done
#echo
#color_text "$GREEN" "CONNECTED!"

# URL of the website
WEBSITE_URL="https://www.bankmandiri.co.id"

echo "Fetching homepage from $WEBSITE_URL..."
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.5
done
echo

# Fetch the homepage and save it
curl -L -o bankmandiri_homepage.html $WEBSITE_URL
echo -e "${GREEN}Unknow Username and Login, Access Recordding to Homepage fetched and saved as bankmandiri_homepage.html${RESET}"

# If there's a login process
LOGIN_URL="https://www.bankmandiri.co.id/login"   # Update this with the correct login URL
USERNAME="your_username"                  # Replace with your actual username
PASSWORD="your_password"                  # Replace with your actual password
COOKIE_FILE="cookies.txt"                 # File to store cookies

echo "Start login..."
total=500
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 0.05
done
echo
# Now login (if applicable)
curl -c $COOKIE_FILE -d "username=$USERNAME&password=$PASSWORD" -X POST $LOGIN_URL
echo -e "${GREEN}Illegal Authentication Login with username! WARNING $USERNAME${RESET}"

# Access a protected page after login
PROTECTED_PAGE_URL="https://www.bankmandiri.co.id/some_protected_page"  # Update with actual protected page URL
echo "Fetching protected page from $PROTECTED_PAGE_URL..."
total=100
for i in $(seq 0 $total); do
    progress_bar "$i" "$total"
    sleep 1
done
echo

curl -b $COOKIE_FILE -o protected_page.html $PROTECTED_PAGE_URL
echo -e "${GREEN}Protected page fetched and saved as protected_page.html${RESET}"

for i in {10..1}; do
  echo -ne "\rStarting in $i seconds"
  sleep 1
done
echo -e "\nDataFound!"

sleep 10
typewrite ">>ACC_HOLDER_NUM        : 1390071171171" \
          ">>Name                  : Sonogiri_Tampomas_PT" \
          ">>Acc_Holder_Address    : Karajan_RT_001/002_Jatiwangi_Kabupaten_Karawang" \
          "                          Jawa_Barat_Indonesia" \
          ">>CIF_Num               : 13443321613" \
          ">>Acc_Branch            : KCP_CIJANTUNG_12910" \
          ">>Acc_Status_UPD        : Full_Blockade_Access_Passive" \
          ">>Layer_1_Acc_Num       : N/A" \
          ">>Layer_8_Num           : N/A" \
          ">>UBC                   : CUB08_customer" \
          ">>NSE_Amount            : 0,00 IDR" \
          ">>Available_Fund        : 0,00 IDR" \
          ">>Blockade_Fund         : 7,984,999,677,995.35  IDR" \
          ">>Amount_Converted      : 7,984,999,677,995.35  IDR" \
          ">>Layer 1               : 0,00 IDR" \
          ">>Layer 2               : 0,00 IDR" \
          ">>Layer 3               : 0,00 IDR" \
          ">>Layer 4               : 0,00 IDR" \
          ">>Layer 5               : 0,00 IDR" \
          ">>Layer 6               : 0,00 IDR" \
          ">>Layer 7               : 7,984,999,677,995.35  IDR" \
          ">>Layer 8               : 0,00 IDR" \
          ">>BLockade_Fund         : 7,984,999,677,995.35  IDR" \
          ">>Amount_Converted      : 7,984,999,677,995.35  IDR"
typewrite "====================================================================================================" \
# Confirmation to proceed
read -p "PROCEED CONTINUE? YES/NO: " doyouwanttocontinue
if [[ "$doyouwanttocontinue" =~ ^[Yy][Ee][Ss]$ ]]; then
    echo "ILLEGAL ACESSS...!!!"
else
    echo "disconnected"
    exit 0
fi

# End of the script
color_text "$RED" "Get Access Permission PT.Bank Mandiri (Persero) TBK. Otherwise International Cyber Crime Law Department Authority."
color_text "$RED" "Bank Mandiri is fully committed to preventing unauthorized or accidental access, processing, or deletion of data by any party."
color_text "$RED" "This commitment is upheld by implementing comprehensive data security management, encompassing asset management " 
color_text "$RED" "monitoring activities, protection of data transfers and data destruction."
# Target URL
URL="www.sso.corp.bankmandiri.co.id"

# Run httping with a specific number of pings
httping -c 500 "$URL"