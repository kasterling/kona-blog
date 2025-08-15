# Kona Blog Workflow: iPhone → Superwisper → Blog

## Daily Blogging Process

### 1. Capture Content (On Location)
- **Photos/Videos**: Take photos/videos with iPhone
- **Audio Notes**: Use Superwisper to record thoughts, experiences, and descriptions
- **Location Notes**: Make note of specific locations for Google Maps integration

### 2. Prepare Content (Back at Hotel/WiFi)

#### Photos:
1. Use iPhone's built-in editing or apps like "Image Size" to resize photos to web-friendly sizes (< 1MB each)
2. Transfer photos to computer via AirDrop or iCloud
3. Save photos in `/static/images/` folder with descriptive names like `day1-beach-sunset.jpg`

#### Audio Transcription:
1. Export Superwisper audio to computer
2. Use transcription service:
   - **Option A**: Upload to Otter.ai or Rev.com
   - **Option B**: Use macOS built-in dictation
   - **Option C**: Manual transcription while listening

### 3. Create Blog Post

#### Quick Start:
```bash
cd /Users/keithsterling/Desktop/kona-blog/kona-blog
hugo new posts/day-X-title.md
```

#### Edit the Post:
1. Open the new `.md` file in your text editor
2. Replace template content with transcribed thoughts
3. Add photos using gallery shortcode:
```markdown
{{< gallery >}}
{{< figure src="images/day1-photo1.jpg" alt="Beach sunset" >}}
{{< figure src="images/day1-photo2.jpg" alt="Coffee plantation" >}}
{{< /gallery >}}
```

#### Add Location (Optional):
1. Go to Google Maps → Find location → Share → Embed a map
2. Copy the iframe HTML and paste into your post

### 4. Preview and Publish

#### Preview Locally:
```bash
hugo server
```
Visit http://localhost:1313 to preview

#### Publish to GitHub:
```bash
git add .
git commit -m "Day X: [Brief description]"
git push origin main
```

Your blog will be live at: `https://yourusername.github.io/kona-blog`

## File Organization

```
kona-blog/
├── content/posts/          # Blog posts (.md files)
├── static/images/          # Photos and images
├── hugo.toml              # Site configuration
└── .github/workflows/     # Auto-deployment to GitHub Pages
```

## Quick Reference Commands

- **New post**: `hugo new posts/filename.md`
- **Preview**: `hugo server`
- **Publish**: `git add . && git commit -m "message" && git push`

## Tips for Success

1. **Resize photos before adding** - keeps your repo manageable
2. **Use descriptive filenames** - `day1-snorkeling.jpg` not `IMG_1234.jpg`
3. **Write in Markdown** - it's simple: `# Header`, `**bold**`, `*italic*`
4. **Commit frequently** - don't wait until the end of your trip
5. **Test locally first** - always preview with `hugo server` before publishing