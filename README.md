# WordPress Website Deployment Guide

This guide outlines the deployment of a WordPress website on an AWS EC2 instance running Ubuntu 22.04 LTS with a LEMP (Linux, Nginx, MySQL, PHP) stack. Additionally, we'll cover SSL certificate installation, content caching, gzip compression, GitHub Actions for continuous integration and deployment, and provide security configurations.

## Server Setup

- **AWS EC2 Instance**: t2.micro with 30GB of internal storage.
- **Operating System**: Ubuntu 22.04 LTS

## LEMP Stack Configuration

- **Nginx**: Version nginx/1.18.0 (Ubuntu)
- **MySQL**: Version mysql  Ver 8.0.34-0ubuntu0.22.04.1 for Linux on x86_64 ((Ubuntu))
- **PHP**: Version PHP 8.1.2-1ubuntu2.14 (cli) (built: Aug 18 2023 11:41:11) (NTS)
  - Zend Engine v4.1.2, Zend OPcache v8.1.2-1ubuntu2.14
- **SSL Certificate**: Let's Encrypt certificate with auto-renewal.

## WordPress Installation

- WordPress installed and secured.
- Admin Credentials:
  - Username: admin
  - Password: 6HslhjAQERxaYIk)sC
- Viewer User Credentials:
  - Username: viewer
  - Password: typV$8Xq@rJasTm#mVIO$NnT

## Nginx Configuration

- Enabled FastCGI cache for WordPress.
- Implemented gzip compression for improved performance.

## GitHub Actions Workflow

- Set up GitHub Actions workflow for continuous deployment.
- Developers can commit changes to the main branch or create feature branches for development and open pull requests.
- Changes are automatically deployed to the server upon successful CI/CD workflow execution.

## SSL Certificate Management

- SSL certificate installation using Certbot.
- Automatic certificate renewal ensures secure communication.

## Website Link

Access the deployed website at [https://autointerdel.ddns.net/](https://autointerdel.ddns.net/).

## Usage

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/amarthyanathb/brain.git
Configure your local development environment following the instructions in the README.md.

Make changes, commit them, and push to the main branch or create a feature branch.

GitHub Actions will automatically deploy changes to your server upon successful commits to the main branch or pull request merges.

Access your website securely via HTTPS using https://autointerdel.ddns.net/.

Security Considerations
SSH keys and secrets are securely managed.
Regular server and WordPress updates are recommended to patch security vulnerabilities.
Security headers and firewall rules should be maintained for enhanced security.




