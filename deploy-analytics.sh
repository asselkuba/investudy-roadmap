#!/bin/bash

# Navigate to project directory
cd /Users/asselkubasheva/Projects/investudy-roadmap

# Add all changes
git add index.html report.html analytics-report.html

# Commit with descriptive message
git commit -m "Add Analytics page with interactive charts and insights

- Added new Analytics page (analytics-report.html)
- Updated navigation in index.html and report.html
- Added 6 interactive charts: payment conversion, platform distribution, payment failures timeline, cohort retention, registration flow, release impact
- Included detailed conclusions under each chart
- Integrated with existing design system"

# Push to GitHub
git push origin main

echo "✅ Changes pushed successfully!"
echo "📊 Analytics page will be available at: https://investudy.online/analytics-report.html"
