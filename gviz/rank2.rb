require 'gviz'
Graph do
  route Kandan: :Hubot
  route Hubot: :Kandan
  route GitLab: :Hubot
  route GitLab: :GitLabCI
  rank :max, :Kandan
  rank :same, :GitLab, :Hubot
  rank :min, :GitLabCI
  save(:rank2, :png)
end
