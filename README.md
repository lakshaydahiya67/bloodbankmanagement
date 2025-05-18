# Blood Bank Management System

A comprehensive blood bank management system built with Django.

## Features

- Admin, Donor, and Patient user roles
- Blood donation tracking
- Blood request management
- Blood stock management
- User authentication and authorization

## Local Development

1. Clone the repository
2. Create a virtual environment: `python -m venv venv`
3. Activate the virtual environment:
   - Windows: `venv\Scripts\activate`
   - Linux/Mac: `source venv/bin/activate`
4. Install dependencies: `pip install -r requirements.txt`
5. Create a `.env` file in the project root with the following variables:
   ```
   SECRET_KEY=your-secret-key-here
   DEBUG=True
   ALLOWED_HOSTS=localhost,127.0.0.1
   PRODUCTION=False
   
   # Email Settings (optional)
   EMAIL_HOST_USER=your-email@gmail.com
   EMAIL_HOST_PASSWORD=your-email-password
   EMAIL_RECEIVING_USER=your-receiving-email@gmail.com
   ```
6. Run migrations: `python manage.py migrate`
7. Create a superuser: `python manage.py createsuperuser`
8. Run the server: `python manage.py runserver`

## Deployment on Render

This project is configured for easy deployment on Render.com:

1. Fork this repository to your GitHub account
2. Sign up for a Render account
3. Create a new Web Service on Render
4. Connect your GitHub repository
5. Configure the following settings:
   - Build Command: `./build.sh`
   - Start Command: `gunicorn bloodbankmanagement.wsgi:application`
6. Add the following environment variables:
   - `PRODUCTION`: true
   - `ALLOWED_HOSTS`: .onrender.com
   - `SECRET_KEY`: (generate a secure random key)
7. Deploy the service

## Technologies Used

- Django 3.0.5
- Bootstrap 5.3.2
- SQLite (development) / PostgreSQL (production)
- Gunicorn
- WhiteNoise for static files

## License

This project is licensed under the MIT License - see the LICENSE file for details. 