# Lokka Static
You will be able to create a static page.

## Installation
    $ cd LOKKA_ROOT/public/plugin
    $ git clone git://github.com/daic-h/lokka-static.git
    
## Usage

So If you want a static page, please create the following files:

    plugin/lokka-static/views/example.erb

access to

    http://your.app.url/example
    
You can use the following template engine:
    
    html / erb / haml / slim / erubis 
    
## Helper

access to css javascript image is

    assets_path("example.css") 
    #=> /plugin/lokka-static/views/example/example.css

    assets_path("image/example.png") 
    #=> /plugin/lokka-static/views/example/image/example.png

assets_path is always looking "/plugin/lokka-static/views/#{file name}/" 

## Copyright
Copyright (c) 2012 Daichi Hirata, released under the MIT license.
