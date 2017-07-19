module Audiomack
  class Audiomack

    def wait_for_ajax(&block)
      Watir::Wait.until { browser.execute_script("return typeof jQuery == 'function'") }
      Watir::Wait.until { browser.execute_script( "return jQuery.active == 0") }
      yield if block
    end

    def hide_search_box
      browser.execute_script <<-JS
        var box = document.getElementById('nav-wrap');
        box.style.display = 'none';
        JS
    end
  end
end
