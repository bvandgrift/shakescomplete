require 'sinatra'
require 'haml'
require 'json'

get "/" do
  @results = [
    {quote: "Cry 'havoc,' and let slip the dogs of war;"},
    {quote: "Do not cry havoc, where you should but hunt"},
    {quote: "To tear and havoc more than she can eat."},
    {quote: "This quarry cries on havoc. o proud death,"},
    {quote: "Of pellmell havoc and confusion."},
  ]
  haml :index
end

post "/" do
  @results = [
    {
      quote: "Cry 'havoc,' and let slip the dogs of war;", 
      title: "Julius Caesar", 
      reference: "Act 3, Scene 1"
    },
    {
      quote: "Do not cry havoc, where you should but hunt", 
      title: "Coriolanus", 
      reference: "Act 3, Scene 1"
    },
    {
      quote: "To tear and havoc more than she can eat.", 
      title: "Henry V",
      reference: "Act 1, Scene 2"
    },
  ]
  haml :index
end

get "/complete" do
  [200, [["cry havoc", "cry like a baby", "cry into the night"].to_json]]
end

__END__
