#!/usr/bin/env ruby
content = File
  .read("data/urls.txt")
  .split("\n")
  .map(&:downcase)
  .map(&:strip)
  .sort
  .reject{|x| x == ""}
  .join("\n")

File.write("data/urls.txt", content)
