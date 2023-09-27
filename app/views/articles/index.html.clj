(html
  [:main
    [:section {:id "ruby-lisp-alien-tech"}
      [:h2 "Ruby & the LISP Alien Tech"]
      [:p "When we talk about the world of programming languages, two stand out in their unique ways: Ruby, "
          "with its elegant syntax and Rails powerhouse, and LISP, the ancient language known for its "
          "code-as-data philosophy. The connection? Both embody the spirit of making the impossible possible. "
          "Join us as we delve into the mysteries of Ruby and LISP and uncover the alien tech within."]
      [:img {:src "https://www.lisperati.com/lisplogo_warning2_256.png", :alt "LISP Alien Tech Illustration"}]]
    
    [:section {:id "s-expressions"}
      [:h2 "What are S-expressions?"]
      [:p "S-expressions, or symbolic expressions, are a fundamental part of the LISP (LISt Processing) "
          "programming language. They are used to represent both data and code. An S-expression can be an "
          "atom or a list. At its core, an S-expression is a way to represent nested list data in a uniform "
          "manner."]
      [:figure
        [:img {:src "data:image/png;base64,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", :alt "S-expression diagram"}]
        [:figcaption "A visual representation of S-expressions."]]]])
