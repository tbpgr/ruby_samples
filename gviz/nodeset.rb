require 'gviz'
require 'pp'

Graph do
  route :Hubot
  route :Kandan
  route :GitLab, :GitLabCI
  pp nodeset
  pp @nodes
end
