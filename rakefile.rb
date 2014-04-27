
desc "Given a title as an argument, create a new post file"
task :post do
  title = ENV['title']
  category = ENV['category']
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{title.gsub(/\s/, '_').downcase}.md"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
layout: post
title: #{title}
categories: #{category}
tags:

date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
---
EOS
    end
    puts "Now open #{path} in an editor."
end

desc 'Running Jekyll with --server --auto opition'
task :run do
  system('jekyll serve')
end

desc 'Upload my jekyll site to github'
task :dev do
  #system('jekyll')
  system('git add .')
  system("git commit -am 'auto commit to jekyll'")
  system('git push origin gh-pages')
end

task :default => [:post]