require 'java'
require './lib/clojure-tools-1.11.1.1413.jar'
require './lib/hiccup-standalone.jar'

java_import 'clojure.java.api.Clojure'

class CljHandler
  def call(template, _source = nil)
    # Load and refer the hiccup.core functions
    Clojure.var("clojure.core", "require").invoke(Clojure.read("hiccup.core"))
    # Avoid prefixing method calls with hiccup in the views
    Clojure.var("clojure.core", "refer").invoke(Clojure.read("hiccup.core"))

    eval_fn = Clojure.var("clojure.core", "eval")

    # Evaluate a Clojure expression that uses Hiccup
    # Actually this is our .clj template
    expression = Clojure.read(template.source)
    result = eval_fn.invoke(expression)

    "output_buffer.safe_concat('#{result}')"
  end
end
