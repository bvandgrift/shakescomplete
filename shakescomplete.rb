require 'sinatra'
require 'haml'
require 'json'

get "/" do
  @results = [{quote: "whether 'tis nobler", :title => "Hamlet", :reference => "Act 3"}]
  haml :index
end

post "/find" do
  @results = [
    {quote: "whether 'tis nobler", :title => "Hamlet", :reference => "Act 3"},
    {quote: "cry havoc and let slip", :title => "One of the Henries", :reference => "Act 1"},
    {quote: "this is stuff", :title => "Nonsense", :reference => "Act 2"},
  ]
  haml :index
end

get "/complete", :provides => :json do
  [200, [["cry havoc", "cry like a baby", "cry into the night"].to_json]]
end

__END__
