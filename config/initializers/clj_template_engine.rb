require Rails.root.join('lib', 'clj_handler')

ActionView::Template.register_template_handler(:clj, CljHandler.new)
