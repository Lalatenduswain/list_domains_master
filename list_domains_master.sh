#!/bin/bash

# Function to list domains for Apache HTTP Server
list_apache_domains() {
    local config_dir="/etc/apache2/sites-available"
    if [ -d "$config_dir" ]; then
        echo "Listing domains for Apache HTTP Server:"
        grep -E -o 'Server(Name|Alias)\s+\S+' "$config_dir"/*.conf | awk '{print $2}' | sort | uniq
    else
        echo "Apache configuration directory not found."
    fi
}

# Function to list domains for Nginx
list_nginx_domains() {
    local config_dir="/etc/nginx/sites-available"
    if [ -d "$config_dir" ]; then
        echo "Listing domains for Nginx:"
        grep -E -o 'server_name\s+\S+' "$config_dir"/*.conf | awk '{print $2}' | sort | uniq
    else
        echo "Nginx configuration directory not found."
    fi
}

# Function to list domains for Lighttpd
list_lighttpd_domains() {
    local config_dir="/etc/lighttpd"
    if [ -d "$config_dir" ]; then
        echo "Listing domains for Lighttpd:"
        grep -E -o 'server.name\s+\S+' "$config_dir"/*.conf | awk '{print $2}' | sort | uniq
    else
        echo "Lighttpd configuration directory not found."
    fi
}

# Function to list domains for Caddy
list_caddy_domains() {
    local config_file="/etc/caddy/Caddyfile"
    if [ -f "$config_file" ]; then
        echo "Listing domains for Caddy:"
        grep -E -o '^\S+' "$config_file" | sort | uniq
    else
        echo "Caddy configuration file not found."
    fi
}

# Function to list domains for Apache Tomcat
list_tomcat_domains() {
    local config_file="/opt/tomcat/conf/server.xml"
    if [ -f "$config_file" ]; then
        echo "Listing domains for Apache Tomcat:"
        grep -E -o 'host name="\S+"' "$config_file" | sed 's/host name="//' | sed 's/"//g' | sort | uniq
    else
        echo "Apache Tomcat configuration file not found."
    fi
}

# Function to list domains for Cherokee
list_cherokee_domains() {
    local config_dir="/etc/cherokee"
    if [ -d "$config_dir" ]; then
        echo "Listing domains for Cherokee:"
        grep -E -o 'hostname\s+\S+' "$config_dir"/*.conf | awk '{print $2}' | sort | uniq
    else
        echo "Cherokee configuration directory not found."
    fi
}

# Main menu
echo "Select the web server to list domains:"
echo "1. Apache HTTP Server"
echo "2. Nginx"
echo "3. Lighttpd"
echo "4. Caddy"
echo "5. Apache Tomcat"
echo "6. Cherokee"
read -p "Enter your choice [1-6]: " choice

case $choice in
    1) list_apache_domains ;;
    2) list_nginx_domains ;;
    3) list_lighttpd_domains ;;
    4) list_caddy_domains ;;
    5) list_tomcat_domains ;;
    6) list_cherokee_domains ;;
    *) echo "Invalid choice. Please select a number between 1 and 6." ;;
esac
