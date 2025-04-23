# Blood Bank Management System

## Overview
A web-based Blood Bank Management System designed to efficiently manage blood inventory, donor information, patient records, and blood requests. This system streamlines blood bank operations while ensuring timely access to safe blood supplies for patients in need.

## Features
- **Blood Inventory Management**: Real-time tracking of blood units by blood group (A+, A-, B+, B-, AB+, AB-, O+, O-)
- **Donor Management**: Register, track, and manage donor information and donation history
- **Patient Management**: Register patients and track their blood requests
- **Blood Request Processing**: Manage blood requests from patients with approval/rejection workflow
- **Blood Donation Tracking**: Record and approve blood donations from registered donors
- **Admin Dashboard**: Comprehensive dashboard with blood stock statistics and system overview

## Technology Stack
- **Frontend**: HTML5, CSS3, JavaScript with Bootstrap 4
- **Backend**: Python with Django 3.0.5
- **Database**: SQLite
- **Authentication**: Django's built-in authentication system

## Installation

### Prerequisites
- Python 3.11 or higher
- pip package manager
- Virtual environment (recommended)

### Setup Instructions
```bash
# Create a virtual environment using Python 3.11:
python3.11 -m venv venv

# Activate the virtual environment:
source venv/bin/activate  # for Linux/macOS
# or
venv\Scripts\activate  # for Windows

# Install the required dependencies:
pip install -r requirements.txt

# Make database migrations:
python manage.py makemigrations

# Apply the migrations:
python manage.py migrate

# Run the development server:
python manage.py runserver

# Create a Django superuser to access the admin panel:
python manage.py createsuperuser
