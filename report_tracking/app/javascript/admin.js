// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestroge"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


import $ from 'jquery';
global.$ = jQuery;

import "bootstarp";

import "./plugins/jquery.easing.min"
import "./plugins/sb-admin-2.min"
import "./plugins/chart-area-demo"
import "./plugins/chart-pie-demo"
import "./plugins/Chart.min"


