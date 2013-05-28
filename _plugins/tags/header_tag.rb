module Jekyll
  class HeaderTag < Liquid::Tag
    # {% header h1 Incidents }
    # 
    #     <div class="page-header">
    #       <h1>Incidents</h1>
    #     </div>
    #
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup
    end

    def render(context)
      params = @markup.split(" ")
      tag = params.shift
      text = params.join(" ")
      "<div class='page-header'><#{tag}>#{text}</#{tag}></div>"
    end

  end
end

Liquid::Template.register_tag('header', Jekyll::HeaderTag)
