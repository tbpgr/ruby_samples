require 'gviz'
Graph do
  route Kandan: :Hubot
  route Hubot: :Kandan
  route GitLab: :Hubot
  route GitLab: :GitLabCI
  rank :min, :Kandan
  rank :same, :GitLab, :Hubot
  rank :max, :GitLabCI
  save(:rank, :png)
end
