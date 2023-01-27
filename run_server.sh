# for ruby 3.0
bundler exec jekyll build && bash -c 'cd _site && python3 -m http.server 3000'