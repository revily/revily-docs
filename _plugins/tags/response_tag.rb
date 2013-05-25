module Jekyll
  class ResponseTag < Liquid::Block
    # {% params %}
    #     {% param message string required "The content of the notification sent to the current user on-call" "load average alert on app1.example.com" %}
    #     {% param key string "A unique identifier for use with your monitoring service" "app1.example.com/load_average" %}
    # {% endparams %}
    #
    #   <article class="span6 data-block">
    #     <header>
    #       <h2>Params</h2>
    #     </header>
    #     <section>
    #       {% param message string required "The content of the notification sent to the current user on-call" "load average alert on app1.example.com" %}
    #       {% param key string "A unique identifier for use with your monitoring service" "app1.example.com/load_average" %}
    #     </section>
    #   </article>
    #
    def initialize(tag_name, markup, tokens)
      super
    end

    def render(context)
      output = super

      "<article class='response'><header><h4>Response</h4></header><section>#{output}</section></article>"
    end
  end
end

Liquid::Template.register_tag('response', Jekyll::ResponseTag)
