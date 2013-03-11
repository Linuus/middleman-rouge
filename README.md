# Middleman::Rouge

The middleman-rouge gem adds syntax highlighting for [Middleman](https://github.com/middleman/middleman) using the [Rouge](https://github.com/jayferd/rouge) library and [Redcarpet](https://github.com/vmg/redcarpet) markdown engine.

## Installation

Add these lines to your application's Gemfile:

    gem 'middleman-rouge'
    gem "redcarpet"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install middleman-rouge
    $ gem install redcarpet
    
 Then add this to your config.rb file:

 ```
  ###
  # Markdown
  ###
  
  set :markdown_engine, :redcarpet
  set :markdown, :fenced_code_blocks => true, :smartypants => true
  
  ###
  # Code highlighting
  ###
  
  activate :rouge_syntax
```

Also, you need to add a CSS file to add some coloring. Rouge supports stylesheets created for Pygment. A nice collection of CSS files can be found here:
[https://github.com/richleland/pygments-css](https://github.com/richleland/pygments-css). You may need to configure the CSS class to have `.highlight` as base class.

## Usage
You can add a nice code block like this:
</pre>
  ```ruby
    def index
      @cars = Car.all

      respond_to do |format|
        format.html # index.html.erb
        format.json { render json: @cars }
      end
    end
  ```
</pre>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
