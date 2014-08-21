require 'gviz'
Graph do
  route Kandan: :Hubot
  route Hubot: :Kandan
  route GitLab: :Hubot
  route GitLab: :GitLabCI
  subgraph do
    global label:'GitLab CI'
    route :GitLabCI => :GitLabCiRunner1
    route :GitLabCI => :GitLabCiRunner2
  end
  save(:subgraph, :png)
end
