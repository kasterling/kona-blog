# 📱 Super Easy Daily Blog Posting for Kona Trip

## 🎯 The Simple 4-Step Process

### Step 1: Create Your Content (On Your Phone)
- **Take photos** with your iPhone
- **Record thoughts** with Superwisper
- **Get transcription** from Superwisper (copy the text)

### Step 2: Transfer to Computer
- **Photos**: AirDrop or save to computer
- **Text**: Email yourself the transcription or use AirDrop

### Step 3: Create Your Blog Post (5 minutes)
1. **Open Terminal** (or use VS Code terminal)
2. **Navigate to blog folder**:
   ```bash
   cd /Users/keithsterling/Desktop/kona-blog/kona-blog
   ```
3. **Create new post** (replace "day-2" with your day):
   ```bash
   hugo new posts/day-2-beach-adventure.md
   ```
4. **Open the new file** and replace the template with your content

### Step 4: Publish to Your Blog (2 minutes)
```bash
cd /Users/keithsterling/Desktop/kona-blog/kona-blog
git add .
git commit -m "Day 2: Beach adventure update"
git push
```
**That's it!** Your blog updates in 2-3 minutes at: https://kasterling.github.io/kona-blog/

---

## 📝 Post Template (Copy & Paste This)

When you create a new post, replace the content with this template:

```markdown
---
title: "Day X: Your Adventure Title"
date: 2025-08-22T19:00:00-10:00
draft: false
tags: ["kona", "hawaii", "travel", "day-X"]
---

## Today's Adventure

[Paste your Superwisper transcription here]

## Highlights
- Best moment of the day
- Favorite food/drink
- Funny story or surprise

## Photos

![Description](../images/day-X-photo1.jpg)
![Description](../images/day-X-photo2.jpg)

## Tomorrow's Plans
What's next on your Kona adventure?
```

---

## 📸 Adding Photos (Optional)

1. **Resize photos** on iPhone (using Image Size app)
2. **Save to blog folder**:
   ```bash
   # Copy photos to this folder:
   /Users/keithsterling/Desktop/kona-blog/kona-blog/static/images/
   ```
3. **Reference in your post**:
   ```markdown
   ![Beach sunset](../images/day-2-sunset.jpg)
   ```

---

## 🆘 Quick Help

**If something goes wrong:**
1. Check if you're in the right folder: `pwd` should show the blog path
2. Check blog status: `git status`
3. See recent posts: `ls content/posts/`

**Pro Tips:**
- Name photos clearly: `day-2-snorkeling.jpg` not `IMG_1234.jpg`
- Keep posts short and fun - just capture the moment!
- Don't worry about perfect writing - it's your adventure diary

**Your live blog**: https://kasterling.github.io/kona-blog/