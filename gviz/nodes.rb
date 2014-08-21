require 'gviz'
Graph do
  route :Hubot
  route :Kandan
  route :GitLab, :GitLabCI
  save(:nodes, :png)
end
