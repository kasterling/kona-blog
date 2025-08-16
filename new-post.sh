#!/bin/bash

# Simple script to create a new blog post
# Usage: ./new-post.sh "day-2-beach-adventure"

echo "🏝️  Creating new Kona blog post..."

# Check if post title provided
if [ $# -eq 0 ]; then
    echo "❌ Please provide a post title!"
    echo "Example: ./new-post.sh \"day-2-beach-adventure\""
    exit 1
fi

POST_TITLE="$1"
DATE=$(date +"%Y-%m-%dT%H:%M:%S-10:00")

# Create the post
hugo new posts/${POST_TITLE}.md

echo "✅ Created new post: content/posts/${POST_TITLE}.md"
echo "📝 Edit your post, then run:"
echo "   git add ."
echo "   git commit -m \"${POST_TITLE}\""
echo "   git push"
echo ""
echo "🌐 Your blog: https://kasterling.github.io/kona-blog/"