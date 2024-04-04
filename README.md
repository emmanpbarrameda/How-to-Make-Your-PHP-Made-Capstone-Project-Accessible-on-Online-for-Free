# How to Make Your PHP Made Capstone Project Accessible on Online for Free!
By using Cloudflare, your localhost project made with native PHP or Laravel can be accessed on the internet. In short, you can access your localhost on the internet by using your preferred domain!

# INTRODUCTION
This repository provides instructions and resources for setting up a Cloudflare Tunnel for local development using XAMPP.

------------

# HOW THIS WORKS?
[![how-this-works](https://raw.githubusercontent.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/main/how-this-works.png "how-this-works")](https://raw.githubusercontent.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/main/how-this-works.png "how-this-works")
- Imagine a user or tester accessing your capstone project website on the "project.com" domain. The HTTP request is processed through the Cloudflare network, where configurations and tunnels are checked until it reaches your localhost server on your laptop!
- By setting up this configuration, you can access your capstone project on the internet, even if it's running on your local laptop or desktop localhost. However, you'll need to purchase a .online domain on Hostinger, which will cost you at least 70 pesos.


# REQUIREMENTS:
- Domain Name
- A laptop with at least 4GB of RAM.
- Internet connection.
- XAMPP


# PROS & CONS:
### CONS:
- Your website will be down if the server (which is your laptop) is off.
- Slow website performance if your laptop has slow performance.

### PROS:
- Less expense.
- Easy to modify your code, even when already accessible on the internet.


# WATCH THIS YOUTUBE VIDEO BELOW, FOR THE INSTALLATION AND CONFIGURATION PROCESS

<div align="center">
  <a href="http://www.youtube.com/watch?v=fVBul85jnKs">How to Make Your PHP Made Capstone Project Accessible on Online for Free!</a>
</div>
<div align="center">
  <a href="http://www.youtube.com/watch?v=fVBul85jnKs">
    <img src="http://img.youtube.com/vi/fVBul85jnKs/0.jpg" alt="Video Frame" />
  </a>
</div>



# IMPORTANT LINKS

- **BUY DOMAIN HERE**: https://www.hostinger.ph/domain-checker
- **CLOUDFLARE DASHBOARD**: https://dash.cloudflare.com/
- **DOWNLOAD cloudflared.exe**: https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/




# CLOUDFLARE TUNNEL SETUP

## DETAILED CLOUDFLARE TUNNEL SETUP HERE:
https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/get-started/create-local-tunnel/



## SUMMARIZED CLOUDFLARE TUNNEL SETUP COMMANDS:

- Move your downloaded Cloudflare executable file to a separate folder, then rename it to `cloudflared.exe`
- Go to the search bar of the file explorer where the `cloudflared.exe` is located, then type `cmd`
- Now, the command prompt is open. Type the following commands:

### **- 1ST CMD PROMPT COMMAND:**
`.\cloudflared.exe --version`



### **- 2ND CMD PROMPT COMMAND:**
`cloudflared tunnel login`
- Now, click the provided link in the command prompt to open it in your active browser, where your Cloudflare dashboard account is logged in. Next, **click on your domain** and then **authorize** it.



### **- 3RD CMD PROMPT COMMAND:**
`cloudflared tunnel create mywebsite`
> Note: "**mywebsite**" is the name of your website. Please watch my [YouTube Tutorial](https://youtu.be/fVBul85jnKs "YouTube Tutorial") for the installation guide.

- After the successful execution of the tunnel create command, it will generate a `.json file` in the default Cloudflare directory, which is located at `C:/Users/currentUser/.cloudflared`, then create a `config.yml` file.

- Pre-made content for the config.yml file. you can [download it here](https://github.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/blob/main/README-SETUP%20FILES/config.yml).
```html
url: http://ipv4EthernetIPHere:port
tunnel: <Tunnel ID from .json file>
credentials-file: C:/Users/<currentUser>/.cloudflared/<Tunnel ID from .json file>.json
```
- Please watch my [YouTube Tutorial](https://youtu.be/fVBul85jnKs "YouTube Tutorial") for the installation guide.



### **- 4TH CMD PROMPT COMMAND:**
`cloudflared tunnel route dns mywebsite yourdomain.com`
> Note: **mywebsite** is the name of your website, then **yourdomain.com** is your domain.



### **- 5TH CMD PROMPT COMMAND:**
`cloudflared tunnel run mywebsite`
> Note: "**mywebsite**" is the name of your website. Please watch my [YouTube Tutorial](https://youtu.be/fVBul85jnKs "YouTube Tutorial") for the installation guide.



# HOW TO RUN CLOUDFLARED IF CMD IS NOT RUNNING
- Go to the search bar of the file explorer where the `cloudflared.exe` is located, then type `cloudflared tunnel run mywebsite`

- **However, you can run the `cloudflared tunnel run mywebsite` automatically**,  by using my premade `.bat file` ([download it here](https://github.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/blob/main/README-SETUP%20FILES/cloudflared_run_server.bat "download it here")). Just move the `.bat file` to the folder where `cloudflared.exe` is located, then right-click, and select "Run as administrator."
- You can edit the `.bat file` by opening it in text editors such as VS Code or Notepad++.



# CHANGE THE XAMPP HTDOCS DEFAULT FILEPATH

- Download the `index.php` file [here](https://github.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/blob/main/README-SETUP%20FILES/index.php "here"), then place this file in the XAMPP htdocs folder, and replace the current index.php.
- Update the `header('Location: '.$uri.'/myproject/login.php');` in index.php according to your project's file destination path.



# FREQUENTLY ASKED QUESTIONS

**❓ Do I need port forwarding for this Cloudflare method?**  
No, port forwarding is not required.

**❓ Will this method work on native PHP websites and Laravel?**  
Yes, the tutorial is based on native PHP. For Laravel, you just need to change the `APP_URL` in the `.env` file to your purchased domain. When using `php artisan serve`, declare the Ethernet IPv4 IP and port. You can download the `.bat` file [here](https://github.com/emmanpbarrameda/How-to-Make-Your-PHP-Made-Capstone-Project-Accessible-on-Online-for-Free/blob/main/README-SETUP%20FILES/run_php_artisan_laravel.bat) for running `php artisan serve` automatically.

**❓ What if the "cloudflared tunnel run mywebsite" command prompt is not running?**  
If the command prompt for "cloudflared tunnel run mywebsite" is not running, the website running through Cloudflare cannot be accessed. In this case, you need to run the provided `.bat` file or execute the command "cloudflared tunnel run mywebsite".

**❓ Is an "HTTP" address required in the Config?**  
Yes, only HTTP is required, not HTTPS, since the client/user will access the local server located and running on your XAMPP server.

**❓ Why does the link I entered go to /dashboard of XAMPP?**  
Please refer to the [provided process](link_to_bat_file) for resolving this issue.

**❓ Do I need to have a phpMyAdmin password?**  
If you are applying this to a native PHP website, yes, you will need a password for phpMyAdmin. However, if you are applying this method to Laravel, there is no need to input a password for phpMyAdmin since it will not go to your default Laravel path.

**❓ Where can I download the cloudflared.exe file?**  
You can download it [here](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/downloads/).

**❓ What if Cloudflare makes my website slow?**  
Allocate more RAM on XAMPP, then run Cloudflare by executing this command: `cloudflared tunnel --protocol http2 run mywebsite`.

**❓ Where is the default Cloudflared directory?**  
The Cloudflare directory is located at `C:/Users/currentUser/.cloudflared`. Read more about it [here](https://developers.cloudflare.com/cloudflare-one/connections/connect-networks/get-started/tunnel-useful-terms/#default-cloudflared-directory).

##End

# Get in touch

<p align="center">
  <a href="https://emmanpbarrameda.github.io" target="_blank"><img src="https://img.shields.io/badge/My Portfolio-%20-blue?style=for-the-badge&logo=web"></a>
  &nbsp;&nbsp;
  <a href="mailto:emmanuelbarrameda1@gmail.com" target="_blank"><img src="https://img.shields.io/badge/Email-%20-red?style=for-the-badge&logo=gmail"></a>
  &nbsp;&nbsp;
  <a href="https://facebook.com/emmanpbarrameda/" target="_blank"><img src="https://img.shields.io/badge/Facebook-%20-blue?style=for-the-badge&logo=facebook"></a>
  &nbsp;&nbsp;
  <a href="https://t.me/emmanpbarrameda/" target="_blank"><img src="https://img.shields.io/badge/Telegram-%20-blue?style=for-the-badge&logo=telegram"></a>
  &nbsp;&nbsp;
  <a href="https://linkedin.com/in/emmanpbarrameda/" target="_blank"><img src="https://img.shields.io/badge/LinkedIn-%20-blue?style=for-the-badge&logo=linkedin"></a>
  &nbsp;&nbsp;
  <a href="https://github.com/emmanpbarrameda/" target="_blank"><img src="https://img.shields.io/badge/GitHub-%20-black?style=for-the-badge&logo=github"></a>
</p>
<br>


<br>
</br>

------------

<p align="center">

  <!-- my name -->  <!-- https://kapasia-dev-ed.my.site.com/Badges4Me/s/ -->
  <img alt='/e/' src='https://img.shields.io/badge/MADE_BY - EMMAN_P_BARRAMEDA-100000?style=for-the-badge&logo=/e/&logoColor=1877F2&labelColor=FFFFFF&color=1877F2'/>
  
  <!-- made with love -->
  <img alt='' src='https://img.shields.io/badge/MADE_- WITH LOVE-100000?style=for-the-badge&logo=&logoColor=white&labelColor=EF4041&color=C1282D'/>
  
<p align="center">

  
<p align="center">Copyright © 2024 emmanpbarrameda.<br>All rights reserved.</p
