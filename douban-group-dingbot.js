// ==UserScript==
// @name         Douban Group Dingbot
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Douban Group topics auto comments.
// @author       You
// @match        https://www.douban.com/group/topic/*
// @grant        window.close
// ==/UserScript==

(function() {
  'use strict';

  function random_int (min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
  }

  var filter_by_topic = true;   // whether or not to filter post by topic
  var topic = 'PPResume';
  var title = document.getElementsByTagName('h1')[0].textContent;
  var is_ppresume_topic = (title.toUpperCase().indexOf(topic.toUpperCase()) == -1 ? false : true);

  if (filter_by_topic) {
    if (! is_ppresume_topic) {
      console.log("This is not a " + topic + " topic, you've made a wrong choice, my master...");
      return;
    }
  }

  var words = ['喵', '汪', '嗷', '咩', '哞', '呱',
               '吱', '喔', '叽', '嗡', '咿', '嘶',
               '喳', '嘎', '咕', '哇', '呜', '嗥'];

  var has_captcha = document.getElementById('captcha_image');
  if (has_captcha) {
    console.log("This page has captcha image, I can't post for you, master, sorry...");
    return;
  }
  var textarea = document.querySelector('textarea[id=last]');
  if (! textarea) {
    console.log("You've just posted a comment already, I'll close the window and exit...");
    setTimeout(function () { window.close(); }, 3000);
    return;
  }

  textarea.innerHTML = words[random_int(0, words.length)];

  var submit_button = document.querySelector('input[name=submit_btn]');
  submit_button.click();
})();
