// ==UserScript==
// @name         Linux DO主题监听器
// @namespace    http://tampermonkey.net/
// @version      2.1
// @description  监听 --scheme-type 变化，并给 <html> 添加对应主题类
// @match        https://linux.do/*
// @grant        none
// @author       KIY7086
// ==/UserScript==

(() => {
    'use strict';
  
    class ThemeWatcher {
      constructor(options = {}) {
        this.root = document.documentElement;
        this.currentClass = null;
        this.interval = null;
        this.intervalTime = options.intervalTime || 300;
        this.schemeClassPrefix = 'scheme-';
        this.validSchemes = ['light', 'dark'];
      }
  
      init() {
        this.updateSchemeClass();
        requestAnimationFrame(() => this.updateSchemeClass());
        this.startWatching();
        document.addEventListener('visibilitychange', () => {
          if (document.visibilityState === 'visible') {
            this.updateSchemeClass();
          }
        });
  
        console.log('[ThemeWatcher] 初始化完成');
      }
  
      updateSchemeClass() {
        const schemeRaw = getComputedStyle(this.root).getPropertyValue('--scheme-type');
        const scheme = schemeRaw.replace(/["']/g, '').trim();
  
        if (!scheme || !this.validSchemes.includes(scheme)) return;
        const newClass = `${this.schemeClassPrefix}${scheme}`;
  
        if (this.currentClass !== newClass) {
          if (this.currentClass) {
            this.root.classList.remove(this.currentClass);
          }
  
          this.root.classList.add(newClass);
          this.currentClass = newClass;
  
          console.log(`[ThemeWatcher] 应用主题: ${newClass}`);
        }
      }
  
      startWatching() {
        this.stopWatching();
        const watch = () => {
          this.updateSchemeClass();
          this.interval = setTimeout(() => {
            requestAnimationFrame(watch);
          }, this.intervalTime);
        };
  
        requestAnimationFrame(watch);
      }
  
      stopWatching() {
        if (this.interval) {
          clearTimeout(this.interval);
          this.interval = null;
        }
      }
    }

    const themeWatcher = new ThemeWatcher();
    themeWatcher.init();
  })();