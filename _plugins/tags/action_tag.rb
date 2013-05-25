module Jekyll
  class ActionTag < Liquid::Tag
    # {% action GET /resources }
    # 
    #     <div class="dialog dialog-info">
    #       <span class="label label-info">GET</span> /resources
    #     </div>
    #
    def initialize(tag_name, text, tokens)
      super
      @text = text
      @action, @url = text.split(' ')
    end

    def render(context)
      # "<pre><span class='label label-info'>#{@action}</span> #{@url}</pre>"
      "<pre>#{@action} #{@url}</pre>"
    end

  end
end

Liquid::Template.register_tag('action', Jekyll::ActionTag)