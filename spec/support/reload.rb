#support/reload.rb
def init_reload_check
    page.evaluate_script "window.not_reloaded = 'not reloaded';"
end

def not_reloaded
    page.evaluate_script("window.not_reloaded") == "not reloaded"
end
