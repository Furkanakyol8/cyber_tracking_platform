// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails


import "controllers"
import "@hotwired/turbo-rails"

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestroge"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


global.$ = jQuery;

import "bootstarp";

import "./plugins/jquery.easing.min.js"
import "./plugins/sb-admin-2.min.js"
import "./plugins/chart-area-demo.js"
import "./plugins/chart-pie-demo.js"
import "./plugins/Chart.min.js"

import "stylesheets/application";

