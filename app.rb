require 'sinatra'
require 'slim'

kaeritais = %w{
https://pbs.twimg.com/profile_images/378800000074695718/12d28cee87fcdf29274c2b547dc6d6f9_400x400.jpeg
http://img.7netshopping.jp/bks/images/i7/1301176487.jpg
http://hgn.ai/8mmSQT/img1
}

get '/' do
  slim :index, locals: {kaeritai: kaeritais.sample}
end

__END__

@@ index
doctype html
html
  head
    title 帰りたい
    meta property="og:image" content=kaeritai
    meta property="og:title" content="帰りたい"
  body
    h1 帰りたい
    #content
      img src=kaeritai
