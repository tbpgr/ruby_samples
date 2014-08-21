require 'gviz'
Graph do
  route Kandan: :Hubot
  route Hubot: :Kandan
  route GitLab: :Hubot
  route GitLab: :GitLabCI
  save(:edges, :png)
end
