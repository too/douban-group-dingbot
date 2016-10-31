// ==UserScript==
// @name         Douban Group Dingbot Helper
// @namespace    http://tampermonkey.net/
// @version      0.1
// @description  Douban Group topics auto comments.
// @author       You
// @match        https://www.douban.com/dingbot
// @grant        none
// ==/UserScript==

(function() {
  'use strict';

  function random_int (min, max) {
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min)) + min;
  }

  var urls = ["https://www.douban.com/group/topic/90845242/",
              "https://www.douban.com/group/topic/90845094/",
              "https://www.douban.com/group/topic/90845036/",
              "https://www.douban.com/group/topic/90844973/",
              "https://www.douban.com/group/topic/90844873/",
              "https://www.douban.com/group/topic/90844341/",
              "https://www.douban.com/group/topic/90844012/",
              "https://www.douban.com/group/topic/90841110/",
              "https://www.douban.com/group/topic/90840593/",
              "https://www.douban.com/group/topic/90840457/",
              "https://www.douban.com/group/topic/90840401/",
              "https://www.douban.com/group/topic/90840340/",
              "https://www.douban.com/group/topic/90840228/",
              "https://www.douban.com/group/topic/90840096/",
              "https://www.douban.com/group/topic/90839736/",
              "https://www.douban.com/group/topic/90839654/",
              "https://www.douban.com/group/topic/90839557/"];

  window.location.href = urls[random_int(0, urls.length)];
})();
