# List Domains Master Script

This repository contains a master script that lists all domain names configured for various web servers, including Apache HTTP Server, Nginx, Lighttpd, Caddy, Apache Tomcat, and Cherokee. The script is designed to be flexible and user-friendly, allowing you to choose which web server configuration to query.

## Prerequisites

Before running the script, ensure that you have the following prerequisites:

1. **Bash Shell**: The script is designed to run in a Unix-like environment with a Bash shell.
2. **Web Server Configuration Files**: The script requires access to web server configuration files. Ensure that the relevant configuration files are present and accessible on your system.
3. **Permissions**: You may need appropriate permissions to access configuration files in directories such as `/etc/apache2/`, `/etc/nginx/`, `/etc/lighttpd/`, `/etc/caddy/`, `/opt/tomcat/`, and `/etc/cherokee/`.

## Installation

1. **Clone the Repository**

   Clone this repository to your local machine using the following command:

   ```bash
   git clone https://github.com/Lalatenduswain/list_domains_master.git
   ```

2. **Navigate to the Repository**

   Change to the directory containing the cloned repository:

   ```bash
   cd list_domains_master
   ```

3. **Make the Script Executable**

   Ensure the script is executable by running:

   ```bash
   chmod +x list_domains_master.sh
   ```

## Usage

To run the script, execute the following command:

```bash
./list_domains_master.sh
```

You will be prompted to choose the web server type. Enter the corresponding number to list the domains for the selected web server.

### Available Options

1. **Apache HTTP Server**: Lists domains configured in `/etc/apache2/sites-available/`.
2. **Nginx**: Lists domains configured in `/etc/nginx/sites-available/`.
3. **Lighttpd**: Lists domains configured in `/etc/lighttpd/`.
4. **Caddy**: Lists domains configured in `/etc/caddy/Caddyfile`.
5. **Apache Tomcat**: Lists domains configured in `/opt/tomcat/conf/server.xml`.
6. **Cherokee**: Lists domains configured in `/etc/cherokee/`.

## Disclaimer | Running the Script

**Author:** Lalatendu Swain | [GitHub](https://github.com/Lalatenduswain) | [Website](https://blog.lalatendu.info/)

This script is provided as-is and may require modifications or updates based on your specific environment and requirements. Use it at your own risk. The authors of the script are not liable for any damages or issues caused by its usage.

## Donations

If you find this script useful and want to show your appreciation, you can donate via [Buy Me a Coffee](https://www.buymeacoffee.com/lalatendu.swain).

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
