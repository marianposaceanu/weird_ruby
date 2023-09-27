require 'java'
require './lib/clojure-tools-1.11.1.1413.jar'
require './lib/hiccup-standalone.jar'

# require 'pry'
# binding.pry

java_import 'clojure.java.api.Clojure'

# (html [:span {:class "foo"} "bar"])

# Load the hiccup core
Clojure.var("clojure.core", "require").invoke(Clojure.read("hiccup.core"))

# Get a reference to Clojure's eval function
eval_fn = Clojure.var("clojure.core", "eval")

# Write and evaluate a Clojure expression that uses Hiccup
expression = Clojure.read("(hiccup.core/html [:span \"Hello from Hiccup!\"])")
result = eval_fn.invoke(expression)
puts result  # Outputs: <span>Hello from Hiccup!</span>
