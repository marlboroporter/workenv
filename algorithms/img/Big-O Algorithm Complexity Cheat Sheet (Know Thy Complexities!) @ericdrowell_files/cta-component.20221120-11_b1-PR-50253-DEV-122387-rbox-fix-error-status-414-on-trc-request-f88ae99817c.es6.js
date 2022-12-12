/*! 20221120-11_b1-PR-50253-DEV-122387-rbox-fix-error-status-414-on-trc-request-f88ae99817c */

!function(){const t={ctaAnchorWidth:100,ctaAnchorMarginRight:2,ctaAnchorMarginLeft:2},e=72,n=4,i=2,a=8,r="10px",o=.1,s=10,l=.98,d=TRC.dom.createHTMLElement("canvas");class c{constructor(t,e){this.itemContainer=t,this.rbox=t.rbox,this.ctaData=e,this.labelsBox=t.labelsBox,c.styleInjected||c.injectCallToActionStyle()}static injectCallToActionStyle(){const e=`${t.ctaAnchorWidth}px`,n=`${t.ctaAnchorMarginRight}px`,i=`${t.ctaAnchorMarginLeft}px`;TRC.dom.injectStyle(`div.videoCube a.video-cta-style { width: 100%; } div.videoCube a.video-cta-style span.video-label-box.video-label-box-cta { display: flex; flex-wrap: wrap; align-content: flex-start; } div.videoCube a.video-cta-style span.video-label-box.video-label-box-cta.video-label-box-cta-non-ie { justify-content: space-between; } div.videoCube a.video-cta-style span.video-label-flex-cta-item { flex-basis: 100%; } div.videoCube a.video-cta-style span.video-branding-flex-cta-item { flex-grow: 1; flex-basis: 1px; } div.videoCube a.video-cta-style span.video-branding-flex-cta-item-no-stream { margin-top: 5px; } div.videoCube a.video-cta-style a.video-cta-href { display: inline-block; margin: 5px 2px 0px 2px; padding: 0; min-width: 72px; bottom: 0; vertical-align: top; position: relative; box-sizing: content-box; align-self: start; order: 2; flex-shrink: 0; font-size: 10px; line-height: 13.2px; } div.videoCube a.video-cta-style a.video-cta-href button.video-cta-button { margin: 0; height: 24px; font-size: 10px; line-height: 13.2px; border-radius: 4px; border: 1px solid; background-color: inherit; border-color: #999999; text-transform: none; letter-spacing: normal; box-sizing: border-box; font-weight: 400; cursor: pointer; outline: none; font-family: Helvetica; padding: 1px 4px; width: 100%; min-width: 1px; opacity: 1; box-shadow: none; user-select: none; transition: none; text-decoration: none; transform: none; } div.videoCube a.video-cta-style a.video-cta-href button.video-cta-button:hover { color: inherit; border-color: inherit; background-color: inherit; letter-spacing: normal; } div.videoCube a.video-cta-style span.video-branding-flex-cta-rating { flex-basis: 100%; padding-bottom: 2px; padding-top: 2px; margin-top: 5px; direction: ltr; } div.videoCube a.video-cta-style span.video-branding-flex-cta-rating span.video-branding-flex-cta-oval-wrapper { margin-left: 6px; margin-right: 6px; } div.videoCube a.video-cta-style span.video-branding-flex-cta-rating span.video-branding-flex-cta-oval-wrapper svg.cta-rating-oval { vertical-align: middle; margin-bottom: 1px; height: 3px; width: 3px; } div.videoCube a.video-cta-style span.video-branding-flex-cta-rating span.video-branding-flex-cta-price-wrapper { font-family: Helvetica Bold; font-size: 10px; color: #737373; } div.videoCube a.video-cta-style span.video-branding-flex-cta-rating svg.cta-rating-star { margin-right: 4px; height: 9px; width: 9px; }div.videoCube a.video-cta-style.non-feed-cta-item span.video-branding-flex-cta-item-no-stream { margin-top: 3px; }div.videoCube a.video-cta-style.non-feed-cta-item a.video-cta-href { margin-top: 0px; min-width: 68px; }`,null),c.styleInjected=!0}renderCTAButton(t,e){const n=this.rbox.ctaData;if(!n||!n.hasCTAItem)return;if(!this.ctaData.shouldRenderAsCTA&&!n.shouldAdjustAllItemsHeight)return;const i=this.itemContainer.querySelector(".video-label-box");if(!i)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"no_videoLabelBox_list_suffix",TRC.CTAManager.sendEventTypes.filter);if(this.itemContainer.rbox.container.querySelector(".story-widget"))return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"item_in_reco_reel_story_widget_list_suffix",TRC.CTAManager.sendEventTypes.filter);const a=i.querySelector(".branding");if(a&&this.ctaData.shouldRenderAsCTA&&this.ctaData.isPriceRating&&this.renderPriceRatingSection(i,a),n.shouldAdjustAllItemsHeight&&(t.maxDesiredHeight=Math.max(t.maxDesiredHeight,TRC.CTAManager.getDesiredVideoBoxHeight(i,a,this.ctaData,this.rbox))),!a)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"no_branding_list_suffix",TRC.CTAManager.sendEventTypes.filter);const r=a.getBoundingClientRect();if(r&&r.width>0){const t=parseFloat(TRC.CTAManager.getComputedStyleProp(a,"margin-left",0))/r.width;if(t>o)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"high_margin_left_list_suffix",TRC.CTAManager.sendEventTypes.filter);const e=parseFloat(TRC.CTAManager.getComputedStyleProp(a,"margin-right",0))/r.width;if(e>o)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"high_margin_right_list_suffix",TRC.CTAManager.sendEventTypes.filter);if(TRC.ctaManager.shouldReport){this.ctaData.brandingHeightBefore=r.height;const t=i.getBoundingClientRect();if(t){if(!window.TRCImpl.direction||"ltr"===window.TRCImpl.direction){const e=(r.left-t.left)/t.width;e<.15&&(this.ctaData.brandingDirection="ltr",this.ctaData.brandingLocation=e)}if("rtl"===window.TRCImpl.direction){const e=(t.right-r.right)/t.width;e<.15&&(this.ctaData.brandingDirection="rtl",this.ctaData.brandingLocation=e)}}}}const d=TRC.CTAManager.getComputedStyleProp(i,"height"),g=TRC.CTAManager.getComputedStyleProp(i,"max-height");if(t.maxDesiredHeight>g)TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"videoLabelBox_smaller_than_max_height_list_suffix",TRC.CTAManager.sendEventTypes.filter);else{if(d){const t=TRC.CTAManager.getVideoLabelBoxChildrenWithoutButtonHeight(i);if(d+s<t)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"videoLabelBox_smaller_than_children_list_suffix",TRC.CTAManager.sendEventTypes.filter)}if(this.ctaData.shouldRenderAsCTA){const n=TRC.CTAManager.getComputedStyleProp(a,"position");if(n&&"absolute"===n)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"branding_absolute_position_list_suffix",TRC.CTAManager.sendEventTypes.filter);const r=a.querySelector("div.logoDiv");if(r){const t=TRC.CTAManager.getComputedStyleProp(r,"position");if(t&&"absolute"===t)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"branding_logo_div_inner_absolute_position_list_suffix",TRC.CTAManager.sendEventTypes.filter)}const o=this.getMaxWidthForBranding(i,a)||0,s=this.getBrandingWidth(a);if(s>=o)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"large_branding_width_list_suffix",TRC.CTAManager.sendEventTypes.filter);const d=c.getBrandingPartsWidth(a)||0;if(d>=o)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"large_branding_parts_width_list_suffix",TRC.CTAManager.sendEventTypes.filter);const g=TRC.CTAManager.getComputedStyleProp(i,"boxSizing",null);if(!g||"border-box"!==g){const t=i.getBoundingClientRect();if(t&&t.width>0){const e=parseFloat(TRC.CTAManager.getComputedStyleProp(i,"width",0))/t.width;if(e>l){const t=TRC.CTAManager.getComputedStyleProp(i,"paddingLeft",0),e=TRC.CTAManager.getComputedStyleProp(i,"paddingRight",0);if(t>0||e>0)return void TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"padding_on_full_width_list_suffix",TRC.CTAManager.sendEventTypes.filter)}}}t.shouldAdjustHeight=!0,this.drawCTAButton(i,a),i.classList.contains("video-label-box-cta")&&this.handleCtaResponsiveStyle(e)}}}drawCTAButton(t,e){TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"rendered");const n=this.createCtaAnchorElement(e);this.addCtaToDom(n,t,e),this.addClickMetricToCTA(n.ctaButton),this.ctaData.renderedCtaButton=!0}createCtaAnchorElement(t){const{itemContainer:e,ctaData:n}=this,i=TRC.dom.createHTMLElement("a"),a=this.createCtaButton(t);return i.classList.add("video-cta-href"),i.target="_blank",i.rel="nofollow noopener",i.href=this.createAnchorHref(),i.ctaButton=a,c.setCtaButtonStyle(e,n,a),i.appendChild(a),i}createCtaButton(t){const e=TRC.dom.createHTMLElement("button");return e.type="button",e.classList.add("video-cta-button","video-cta-style"),e.innerText=this.ctaData.actionText,c.setStyleFromElement(t,e,"color"),c.setStyleFromElement(t,e,"font-family"),e}createAnchorHref(){return`${this.itemContainer.link.logger_url}&cta=true`}addCtaToDom(t,e,n){const{itemContainer:i}=this,a=this.isLinkDirectsToLabelLink(i)?i.link:this.getLabelLink();a&&a.classList.add("video-cta-style"),!i.rbox.isFeedCard&&a&&a.classList.add("non-feed-cta-item"),e.classList.add("video-label-box-cta"),!TRC.Browser.ie&&e.classList.add("video-label-box-cta-non-ie");const r=e.querySelectorAll(".video-label");if(r)for(let o=0;o<r.length;o++){const t=r[o];t.classList.add("video-label-flex-cta-item")}this.updateBrandingStyling(t,n),e.appendChild(t)}addClickMetricToCTA(t){const{itemContainer:e,ctaData:n}=this;t.onclick=function(){TRC.ctaManager.sendEvent(e,n,"cta_button_clicked")}}isLinkDirectsToLabelLink(t){const e=this.getLabelLink();return!e||!t.link||t.link===e}getLabelLink(){return this.itemContainer.querySelector(".item-label-href")}handleBrandingFlexItemOrder(t,e){if(t.classList.add("video-branding-flex-cta-item"),this.rbox.ctaData.isStream){const n=TRC.CTAManager.getComputedStyleProp(t,"margin-top");n?e.style.marginTop=`${n+1}px`:t.classList.add("video-branding-flex-cta-item-no-stream")}else t.classList.add("video-branding-flex-cta-item-no-stream");t.style.order=1}static setCtaButtonStyle(t,e,n){if(Object.keys(TRC.ctaManager.options.style).forEach(t=>{TRC.ctaManager.options.style[t]&&(n.style[t]=TRC.ctaManager.options.style[t])}),!TRC.ctaManager.options.isInheritTitleColor)return;const i=t.querySelector(".video-title"),a=TRC.CTAManager.getComputedStyleProp(i,"color");a.indexOf("rgb(0, 0, 0)")<0&&TRC.ctaManager.sendEvent(t,e,"CTA_Title_Not_Black"),c.setStyleFromElement(i,n,"color"),c.setStyleFromElement(i,n,"border-color")}static setStyleFromElement(t,e,n){if(!e||!t)return;const i=TRC.CTAManager.getComputedStyleProp(t,n);i&&(e.style[n]=i)}static getBrandingPartsWidth(t){const e=t.querySelector(".branding-inner"),n=t.querySelector(".branding-separator"),i=t.querySelector(".logoDiv"),a=e&&TRC.dom.getOuterWidth(e)||0,r=n&&TRC.dom.getOuterWidth(n)||0,o=i&&TRC.dom.getOuterWidth(i)||0;return a+r+o}updateBrandingStyling(t,e){e&&this.handleBrandingFlexItemOrder(e,t)}renderPriceRatingSection(t,e){TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"renderedPriceRating");const n=this.createPriceRatingSection();t.insertBefore(n,e)}createPriceRatingSection(){const t=TRC.dom.createHTMLElement("span");if(t.classList.add("video-branding-flex-cta-rating"),this.ctaData.price){const e=TRC.dom.createHTMLElement("span");e.innerText=this.ctaData.price,e.classList.add("video-branding-flex-cta-price-wrapper"),t.appendChild(e)}if(this.ctaData.price&&this.ctaData.rating){const e=TRC.dom.createHTMLElement("span");e.classList.add("video-branding-flex-cta-oval-wrapper");const n=c.createSvgOval();e.insertAdjacentHTML("beforeend",n),t.appendChild(e)}if(this.ctaData.rating){const{cardIndex:e}=this.ctaData,n=TRC.dom.createHTMLElement("span");for(let t=0;t<5;t++){const i=Math.min(Math.max(this.ctaData.rating-t,0),1),a=c.createSvgStar(e,t,i);n.insertAdjacentHTML("beforeend",a)}n.classList.add("video-branding-flex-cta-stars-wrapper"),t.appendChild(n)}return t}static createSvgStar(t,e,n){return`${'<svg class="cta-rating-star" height="9px" version="1.1" viewBox="0 0 9 9" width="9px" xmlns="http://www.w3.org/2000/svg">'+'    <g fill="none" fill-rule="evenodd" stroke="none" stroke-width="1">'+'        <linearGradient id="lg'}${e}-${t}" x1="0" x2="1" y1="0.5" y2="0.5">`+`            <stop offset="0" stop-color="#737373" stop-opacity="1"/>`+`            <stop offset="${n}" stop-color="#737373" stop-opacity="1"/>`+`            <stop offset="${n}" stop-color="#737373" stop-opacity="0.5"/>`+`            <stop offset="1" stop-color="#737373" stop-opacity="0.5"/>`+`        </linearGradient>`+`        <g fill="url(#lg${e}-${t})" fill-rule="nonzero" transform="translate(-21.000000, -19.000000)">`+`            <polygon points="25.5 26.4626165 22.7188471 28 23.25 24.7437694 21 22.4376941 24.1094235 21.9626165 25.5 19 26.8905765 21.9626165 30 22.4376941 27.75 24.7437694 28.2811529 28"></polygon>`+`        </g>`+`    </g>`+`</svg>`}static createSvgOval(){return'<svg class="cta-rating-oval"  width="3px" height="3px" viewBox="0 0 3 3" version="1.1" xmlns="http://www.w3.org/2000/svg">'+'    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">'+'        <g transform="translate(-172.000000, -485.000000)" fill="#666666" fill-rule="nonzero">'+'            <circle cx="173.5" cy="486.5" r="1.5"></circle>'+"        </g>"+"    </g>"+"</svg>"}getBrandingWidth(t){const e=TRC.CTAManager.getComputedStyleProp(t,"font-weight"),n=TRC.CTAManager.getComputedStyleProp(t,"font-size"),i=TRC.CTAManager.getComputedStyleProp(t,"font-family"),a=this.getPseudoElWidth(t,":before"),r=this.getPseudoElWidth(t,":after"),o=this.measureText(this.itemContainer.video_data["branding-text"],e,n,i)||0;return a+o+r}getPseudoElWidth(t,e){let n=0;const i=window.getComputedStyle(t,e,this.itemContainer),a=i&&"none"!==i.content;return a&&(TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"has_pseudo_el"),n=this.calcPseudoElWidth(i)),n}calcPseudoElWidth(t){let e=parseInt(t.width,10);const n=t.content;return isNaN(e)&&n.length>0&&(e=this.measureText(n,t.fontWeight,t.fontSize,t.fontFamily),TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"has_text_pseudo_el")),e}getMaxWidthForBranding(t,o){const s=TRC.CTAManager.getComputedStyleProp(this.getEffectiveTitleElement(t),"width"),l=TRC.ctaManager.options.style.fontWeight||"400",d=this.measureText(this.ctaData.actionText,l,r,TRC.CTAManager.getComputedStyleProp(o,"font-family"))||0,c=Math.max(e,d);return s-c-n-i-a}measureText(t,e,n,i){try{if(null==t||""===t)return null;if(null==n&&(null==i||""===i))return null;if(null==d)return TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"measureText_no_canvas"),null;const a=d.getContext("2d");if(null==a)return TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"measureText_no_canvas_context"),null;const r=[];if(null!=e&&r.push(e.toString()),null!=n&&r.push(`${parseInt(n,10)}px`),null!=i&&r.push(i),0===r.length)return TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"measureText_no_font_parts"),null;const o=r.join(" ");if(null==o||""===o)return TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"measureText_empty_font_value"),null;a.font=o;const s=a.measureText(t);return null==s?(TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"measureText_no_metrics"),null):s.width}catch(t){return TRC.ctaManager.sendEvent(this.itemContainer,this.ctaData,"error_measure_text_list_suffix",TRC.CTAManager.sendEventTypes.filter),null}}getEffectiveTitleElement(t){return this.rbox.ctaData.isStream&&t.querySelector(".video-label")||t}handleCtaResponsiveStyle(t){const{itemContainer:e}=this;if(t.fixResponsiveBoxTitleAndDesc(e),window.TRC.dom.on(window,"resize",()=>{t.fixResponsiveBoxTitleAndDesc(e)}),e.video_data){const n=t.getDetailSpansFromLabelsBoxes("branding",e);n.length&&setTimeout(()=>{for(let i=0;i<n.length;i++)t.fixBoxOverflow(n[i],e.video_data["branding-text"],!0,!0)},0)}}static areRectsIntersect(t,e,n,i){const a=t.getBoundingClientRect(),r=e.getBoundingClientRect();return 0===a.width||0===a.height||0===r.width||0===r.height?null:a.left>r.right||a.right<r.left||a.top>r.bottom||a.bottom<r.top?null:`${n}_intersects_with_${i}`}static isLocationChanged(t,e,n,i,a,r){if(null==a||!r)return null;const o=t.getBoundingClientRect(),s=e.getBoundingClientRect();if(o&&s){if("ltr"===r){const t=(o.left-s.left)/s.width;if(t>a+.1)return`${n}_moved_from_left`}if("rtl"===r){const t=(s.right-o.right)/s.width;if(t>a+.1)return`${n}_moved_from_right`}}return null}static isElementLargerByDelta(t,e,n,i,a){const r=TRC.CTAManager.getHeightOfElementIncludeMargin(t),o=TRC.CTAManager.getHeightOfElementIncludeMargin(e);return r-o>a?`${n}_is_larger_by_${a}_than_${i}`:null}static isLargeElement(t,e,n,i){const a=t.getBoundingClientRect();return a.height>n?`${e}_${i}_large`:null}static isElementExists(t,e){return t?null:`${e}_not_exists`}static isElementVisible(t,e){return"none"===TRC.CTAManager.getComputedStyleProp(t,"display","unknown")?`${e}_display_none`:null}static isAboveOrBelow(t,e,n,i){const a=t.getBoundingClientRect(),r=e.getBoundingClientRect();return a.top>r.bottom?`${n}_below_${i}`:a.bottom<r.top?`${n}_above_${i}`:null}static isRectNotFullyContainedInRect(t,e,n,i){const a=c.isAboveOrBelow(t,e,n,i);if(a)return a;const r=t.getBoundingClientRect(),o=e.getBoundingClientRect();return r.left<o.left?`${n}_left_border_outside_of_${i}`:r.right>o.right?`${n}_right_border_outside_of_${i}`:r.bottom>o.bottom?`${n}_bottom_border_outside_of_${i}`:r.top<o.top?`${n}_top_border_outside_of_${i}`:null}reportBack(t,e){if(!TRC.ctaManager.shouldReport)return;if(!e.renderedCtaButton)return;const n={alreadyReported:!1,itemContainer:t,ctaData:e};window.TRC.dom.on(window,"scroll",()=>{this.reportOnScroll(n)})}reportOnScroll(t={alreadyReported:!1}){if(t.alreadyReported||!t.itemContainer||!t.ctaData)return;const{itemContainer:e,ctaData:n}=t;try{if(!this.rbox.isInViewPort(e,0))return;if(t.alreadyReported)return;t.alreadyReported=!0,setTimeout(()=>{c.reportOnScrollAfterTimeout(t)},Object.prototype.hasOwnProperty.call(t,"timeout")?t.timeout:3e3)}catch(t){TRC.ctaManager.sendEvent(e,n,"error_reporting",TRC.CTAManager.sendEventTypes.report,t.message)}}static reportOnScrollAfterTimeout(t){if(!t.itemContainer||!t.ctaData)return;const{itemContainer:e,ctaData:n}=t;try{TRC.ctaManager.sendEvent(e,n,"visible",TRC.CTAManager.sendEventTypes.report);const t=e.querySelector(".video-label-box"),i=t?t.querySelector(".video-cta-href"):null,a=i?i.querySelector(".video-cta-button"):null,r=t?t.querySelector(".branding"):null,o=c.isElementExists(t,"videoLabelBox")||c.isElementExists(i,"ctaAnchor")||c.isElementExists(a,"ctaButton")||c.isElementExists(r,"branding")||c.isElementVisible(i,"ctaAnchor")||c.isElementVisible(a,"ctaButton")||c.isRectNotFullyContainedInRect(i,e,"ctaAnchor","videoCube")||c.isRectNotFullyContainedInRect(i,t,"ctaAnchor","videoLabelBox")||c.isRectNotFullyContainedInRect(a,i,"ctaButton","ctaAnchor")||c.isAboveOrBelow(i,r,"ctaAnchor","branding")||c.areRectsIntersect(i,r,"ctaAnchor","branding")||c.isLargeElement(a,"ctaButton",TRC.CTAManager.getButtonInnerHeight()+5,"too")||c.isLargeElement(i,"ctaAnchor",TRC.CTAManager.getButtonInnerHeight()+5,"too")||c.isLocationChanged(r,t,"branding","videoLabelBox",n.brandingLocation,n.brandingDirection)||c.isElementLargerByDelta(i,r,"ctaAnchor","branding",20)||c.isElementLargerByDelta(r,i,"branding","ctaAnchor",20)||c.isElementLargerByDelta(i,r,"ctaAnchor","branding",4)||c.isElementLargerByDelta(r,i,"branding","ctaAnchor",4)||c.isLargeElement(r,"branding",1.9*n.brandingHeightBefore,"became");o&&TRC.ctaManager.sendEvent(e,n,o,TRC.CTAManager.sendEventTypes.report)}catch(t){TRC.ctaManager.sendEvent(e,n,"error_reporting_with_timeout",TRC.CTAManager.sendEventTypes.report,t.message)}}}TRC.CallToActionComponent=c}();