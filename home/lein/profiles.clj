{
 :user {
        :search-page-size 1000
        :signing {:gpg-key "trptcolin@gmail.com"}
;        :injections  [(require 'pjstadig.humane-test-output)
;                      (pjstadig.humane-test-output/activate!)]
        :dependencies [
;                       [cljfmt "0.1.4"]
;                       [mvxcvi/puget "0.5.1"]
;                       [clj-stacktrace "0.2.8"]
;                       [pjstadig/humane-test-output "0.6.0"]
;                       [blackwater "0.0.9"]
;                       [com.aphyr/prism "0.1.1"]
;                       [slamhound "1.5.1"]
;                       [org.codehaus.jsr166-mirror/jsr166y "1.7.0"]
;                       [fipp "0.1.0-SNAPSHOT"]
;                       [alembic "0.2.1"]
                       ]
        :repl-options {;:init (do
                       ;        (set! *print-length* 20)
                       ;        ;(require 'clj-stacktrace.repl
                       ;        ;         'clojure.tools.nrepl.middleware.render-values
                       ;        ;         'puget.printer)
                       ;        )
                       ;:caught clj-stacktrace.repl/pst+
                       ;:nrepl-middleware [clojure.tools.nrepl.middleware.render-values/render-values]
                       ;:nrepl-context {:interactive-eval {:renderer puget.printer/cprint-str}}
                       }
;        :jvm-opts ^:replace []
        :plugins [;[lein-clojars "0.9.1"]
;                  [mvxcvi/whidbey "0.3.3-SNAPSHOT"]
;                  [jonase/eastwood "0.1.1"]
;                  [cider/cider-nrepl "0.7.0-SNAPSHOT"]
                  ;[lein-licenses "0.2.1-SNAPSHOT"]
                  ;[jonase/eastwood "0.2.1"]
                  ;[lein-try "0.4.1"]
                  [lein-pprint "1.1.1"]
                  ;[lein-cloverage "1.0.6"]

                  ;; Test auto-runners
;                  [com.jakemccrary/lein-test-refresh "0.5.1"]
                  ;[quickie "0.2.5"]
;                  [com.aphyr/prism "0.1.1"]
;                  [lein-pedantic "0.0.5"]
;                  [lein-pprint "1.1.1"]
;                  [trptcolin/lein-droid "0.1.0-SNAPSHOT"]
;                  [lein-exec "0.3.0"]
;                  [lein-nodisassemble "0.1.2"]
                  ]
;
;        ;:repl-options {:value ~(fn [x] (print "test: ") (print x) (flush))
;        ;               :prompt (fn [ns] (str "your command for <" ns ">, master? "))
;        ;               }
;
;        :android {:sdk-path "/Users/colin/lib/android-sdk-macosx"}
;        ;:plugins [[joodo/lein-joodo "0.11.0"]]
        :aliases { "dumbrepl"  ["trampoline" "run" "-m" "clojure.main/main"] } }
        ;}
; :1.3 {:dependencies [[org.clojure/clojure "1.3.0"]]}
; :1.4 {:dependencies [[org.clojure/clojure "1.4.0"]
;                      [slamhound "1.5.1"]]}
; :1.5 {:dependencies [[org.clojure/clojure "1.5.1"]]}
        ;}
 :dev {:dependencies [[criterium "0.4.2"]]}
}
