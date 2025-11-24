# Justfile for privacy policies site

# Preview site locally
preview:
    open http://localhost:1313/privacy-policies/ &
    hugo server -D --bind 0.0.0.0

# Deploy (commit and push, CI handles the rest)
deploy message="Update privacy policies":
    git add -A
    git commit -m "{{message}}"
    git push

# Build site locally
build:
    hugo --minify

# Clean build artifacts
clean:
    rm -rf public/
