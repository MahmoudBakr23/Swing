# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/stimulus", to: "stimulus.js"
pin_all_from "app/javascript/styles", under: "styles"