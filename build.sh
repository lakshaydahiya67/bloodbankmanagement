#!/usr/bin/env bash
# exit on error
set -o errexit

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Create static folder structure if it doesn't exist
mkdir -p staticfiles/css
mkdir -p staticfiles/image
mkdir -p staticfiles/profile_pic
mkdir -p staticfiles/vendor

# Copy main CSS files to staticfiles to ensure they're available
if [ -d "static/css" ]; then
  cp -r static/css/* staticfiles/css/ 2>/dev/null || true
fi

if [ -d "static/image" ]; then
  cp -r static/image/* staticfiles/image/ 2>/dev/null || true
fi

if [ -d "static/profile_pic" ]; then
  cp -r static/profile_pic/* staticfiles/profile_pic/ 2>/dev/null || true
fi

if [ -d "static/vendor" ]; then
  cp -r static/vendor/* staticfiles/vendor/ 2>/dev/null || true
fi

# Collect static files
python manage.py collectstatic --noinput 