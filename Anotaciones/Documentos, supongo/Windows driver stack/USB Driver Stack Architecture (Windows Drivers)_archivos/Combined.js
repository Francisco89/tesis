vscs=window.vscs||{};vscs.windows=window.vscs.windows||{};vscs.windows.header=function(){function init(){$dropDownList=$("#toclevel1_menu");$selectedCenterLink=$("#selectedTab a");$headerContainer=$("#ux-header");isRtl=$headerContainer.hasClass("rtl");setDropDownListPosition();$(document).click(function(){hideMenu()});$selectedCenterLink.click(function(event){$dropDownList.is(":visible")?hideMenu():showMenu();event.stopPropagation()});$dropDownList.click(function(event){event.stopPropagation()});$(".ltr div.toclevel3 a").each(function(){$(this).animate({opacity:1,left:"-=25"},300,function(){})});$(".rtl div.toclevel3 a").each(function(){$(this).animate({opacity:1,left:"+=25"},300,function(){})})}function setDropDownListPosition(){var logoWidth=$("#ux-header #logoAndSearchBox #logo a img").first().width();isRtl?$dropDownList.css("right",logoWidth-1+"px"):$dropDownList.css("left",logoWidth-1+"px");$dropDownList.css("top",$dropDownList.parent().outerHeight()+5+"px")}function showMenu(){$dropDownList.show()}function hideMenu(){$dropDownList.hide()}var $headerContainer,$dropDownList,$selectedCenterLink,isRtl=!1;return{init:init}}();$(document).ready(function(){vscs.windows.header.init()});;
epx=window.epx||{};epx.library=window.epx.library||{};epx.library.toc=function(){function init(){setPadding();$("#tocnav > div").each(function(){initNode($(this))});updateIfHighContrastMode();$("#tocnav a.toc_collapsed").live("click",function(){function addNodesAfter($predecessor,nodes,startIndex,endIndex,$startingDiv){var existingLinks={},startExpandingLevel=getLevel($startingDiv),$dNextAll=$div.nextAll(),searchIndex,$dNext,dLevel,dhref,i,nodeHasChildren,childCountId,$node;if($dNextAll&&$dNextAll.length>0)for(searchIndex=0;searchIndex<$dNextAll.length;searchIndex++)$dNext=$($dNextAll[searchIndex]),dLevel=getLevel($dNext),dLevel===startExpandingLevel+1&&(dhref=$dNext.children("a").last().attr("href").toLowerCase(),existingLinks[dhref]=1);for(i=startIndex;i>=endIndex;i--)(nodeHasChildren=!1,childCountId=null,existingLinks.hasOwnProperty(nodes[i].Href.toLowerCase()))||(nodes[i].ExtendedAttributes&&(nodes[i].ExtendedAttributes[hasSubTreeAttr]&&(nodeHasChildren=nodes[i].ExtendedAttributes[hasSubTreeAttr]==="true"),nodes[i].ExtendedAttributes["data-childCountId"]&&(childCountId=nodes[i].ExtendedAttributes["data-childCountId"],window.MTPS&&window.MTPS.TopicNodes&&(window.MTPS.TopicNodes[childCountId]=nodes[i].ExtendedAttributes["data-childCount"]))),$node=$(buildNode(nodes[i].Href,nodes[i].Title,level+1,!1,nodeHasChildren,childCountId)),nodes[i].Href===currentHref&&$node.addClass("current"),$predecessor.after($node),window.MTPS&&window.MTPS.Export&&window.MTPS.Export.initViaLink&&window.MTPS.Export.initViaLink($predecessor.next().find("a")));updateIfHighContrastMode();epx.library.tocFixed!=undefined&&epx.library.tocFixed!=null&&epx.library.tocFixed.setPosition()}var $chevron=$(this),$div=$chevron.parent(),level=getLevel($div),href;return $div.attr(childrenLoadedAttr)==="true"?(window.epx.utilities.log("Child nodes already loaded"),$div.nextUntil("div["+levelAttr+'="'+level+'"]').filter("div["+levelAttr+'="'+(level+1)+'"]').show(),epx.library.tocFixed!=undefined&&epx.library.tocFixed!=null&&epx.library.tocFixed.setPosition(),$chevron.attr("class","toc_expanded"),!1):(window.epx.utilities.log("Loading TOC nodes"),href=buildTocHref($chevron.siblings().first().attr("href")),href==undefined||href==null)?!1:($.ajax({type:"GET",async:!0,url:href,dataType:"json",success:function(r){var nodesInserted,$next,$nextLink,nextHref,i,newLevel,$lastSibling;if(!r||r.length<1){window.epx.utilities.log("TOC web service returned 0 nodes.");return}if(window.epx.utilities.log("TOC web service returned "+r.length+" node(s), processing..."),nodesInserted=!1,$next=$div.next(),$next&&($nextLink=$next.children().last(),$nextLink))for(nextHref=$nextLink.attr("href"),i=r.length-1;i>=0;i--)if(window.epx.utilities.endsWith(nextHref,r[i].Href)||window.epx.utilities.endsWith(r[i].Href,nextHref)){for(var paddedAncestors=0,startLevel=parseInt($next.attr(levelAttr)),nextLevel=null;;){if(nextLevel===null){if(nextLevel=startLevel,nextLevel===level+1)break}else if(nextLevel=getLevel($next),nextLevel!==0&&nextLevel<=startLevel)break;if(nextLevel===0&&paddedAncestors++,newLevel=nextLevel+1*paddedAncestors,$next.attr(levelAttr,newLevel),$next.css("padding-"+paddingSide,newLevel*paddingPerLevel+"px"),$next=$next.next(),!$next||!$next.attr(levelAttr))break}addNodesAfter($div,r,i-1,0,$div);$lastSibling=$div.nextUntil("div["+levelAttr+'="'+level+'"]').last();$lastSibling||($lastSibling=$div.siblings().last());addNodesAfter($lastSibling,r,r.length-1,i+1,$div);nodesInserted=!0;break}nodesInserted===!1&&addNodesAfter($div,r,r.length-1,0,$div)}}),$div.attr(childrenLoadedAttr,"true"),$chevron.attr("class","toc_expanded"),!1)});$("#tocnav a.toc_expanded").live("click",function(){return expandClick($(this))})}function initNode($div){var $link=$div.children().last(),level=getLevel($div),current=isCurrent($div),children=hasChildren($div),expanded=children&&current,chevron;expanded===!0&&$div.attr(childrenLoadedAttr,"true");$div.css("padding-"+paddingSide,level*paddingPerLevel+"px");current===!0&&(currentHref=$div.children("a").last().attr("href"));chevron=buildChevron(expanded,children);$link.before(chevron);current===!0&&children===!1&&updateParentChevronForLeafNode($div,level)}function updateParentChevronForLeafNode($div,level){var $parent=$div.parent().children("div["+levelAttr+'="'+(level-1)+'"]').last(),parentChevron=buildChevron(!0,!0);$parent.children().length>0&&($parent.children().first().replaceWith(parentChevron),$parent.attr(childrenLoadedAttr,"true"))}function updateIfHighContrastMode(){function updateForHighContrastMode($element,html){$element.html(html).css({width:"auto",height:"auto","margin-top":"0px"})}var $firstChevron=$("a.toc_expanded:first"),$banner;if($firstChevron){switch($firstChevron.css("background-image")){case"":case"none":break;default:return}$("a.toc_expanded").each(function(){updateForHighContrastMode($(this),"-")});$("a.toc_collapsed").each(function(){updateForHighContrastMode($(this),"+")});$("span.toc_empty").each(function(){updateForHighContrastMode($(this),"●")});$banner=$("#tn_header > div.upperBand > a:first");$banner&&$banner.html($banner.attr("title"))}}function expandClick($chevron){var $div=$chevron.parent(),expandingLevel=getLevel($div),$nextAll=$div.nextAll(),i,$next,level;if($nextAll&&$nextAll.length>0)for(i=0;i<$nextAll.length;i++)if($next=$($nextAll[i]),level=getLevel($next),level===expandingLevel+1)$next.hide().removeAttr(childrenLoadedAttr).children("a.toc_expanded").attr("class","toc_collapsed");else if(level>expandingLevel+1)$next.remove();else break;return $chevron.attr("class","toc_collapsed"),!1}function buildTocHref(baseHref){return baseHref==undefined||baseHref==null?null:baseHref.indexOf("?")===-1?baseHref+"?toc=1":baseHref+"&toc=1"}function buildChevron(expanded,children){var cssClass="toc_empty";return children===!0?(cssClass=expanded===!0?"toc_expanded":"toc_collapsed",chevronFormat.replace("{class}",cssClass)):emptyFormat.replace("{class}",cssClass)}function buildNode(href,title,level,expanded,children,childCountId){var isHrefEmpty=href==null||href==undefined,chevron=buildChevron(expanded,isHrefEmpty?!1:children),nodeTagString;return isHrefEmpty?nodeTagString=nodeSpanTagFormat:(nodeTagString=nodeATagFormat.replace("{href}",href),nodeTagString=nodeTagString.replace("{childCountIdAttribute}",childCountId!=null?'id="'+childCountId+'" ':"")),nodeFormat.replace("{level}",level).replace("{paddingSide}",paddingSide).replace("{padding}",level*paddingPerLevel).replace("{chevron}",chevron).replace("{nodeTag}",nodeTagString.replace(/{text}/gi,window.epx.utilities.htmlEncode(title)))}function getChevron($div){return $div.children().first()}function getLevel($div){return parseInt($div.attr(levelAttr))}function isCurrent($div){return $div.hasClass("current")}function hasChildren($div){return getChevron($div).attr(hasSubTreeAttr)==="true"}function setPadding(){paddingSide=$("html").attr("dir")==="rtl"?"right":"left";var padding=$("#tocPaddingPerLevel").val();padding&&(paddingPerLevel=padding)}var levelAttr="data-toclevel",childrenLoadedAttr="data-childrenloaded",hasSubTreeAttr="data-tochassubtree",chevronFormat='<a class="{class}" href="#" />',emptyFormat='<span class="{class}" />',nodeFormat="<div "+levelAttr+'="{level}" style="padding-{paddingSide}: {padding}px;">{chevron}{nodeTag}<\/div>',nodeATagFormat='<a {childCountIdAttribute}href="{href}" title="{text}">{text}<\/a>',nodeSpanTagFormat='<span class="emptyHref">{text}<\/span>',paddingSide="left",paddingPerLevel=13,currentHref="";return{init:init,initNode:initNode,expandClick:expandClick,buildTocHref:buildTocHref,buildChevron:buildChevron,buildNode:buildNode,getChevron:getChevron,getLevel:getLevel,isCurrent:isCurrent,hasChildren:hasChildren}}();$(document).ready(function(){epx.library.toc.init()});;
epx=window.epx||{};epx.library=window.epx.library||{};epx.library.memberFilter=function(){function init(){if(showInherited=epx.utilities.getCookie(cookieInherited,"true")=="true",showProtected=epx.utilities.getCookie(cookieProtected,"true")=="true",tryFilterMembers()){var $filterHtml=$(".libraryMemberFilter"),$checkBoxInherited=$filterHtml.find("input.libraryFilterInherited"),$checkBoxProtected=$filterHtml.find("input.libraryFilterProtected");showInherited||$checkBoxInherited.prop("checked",!1);showProtected||$checkBoxProtected.prop("checked",!1);$checkBoxInherited.click(function(){var prevShow=showInherited;showInherited=$(this).prop("checked");memberFilterChanged(showInherited,cookieInherited,"input.libraryFilterInherited",prevShow)});$checkBoxProtected.click(function(){var prevShow=showProtected;showProtected=$(this).prop("checked");memberFilterChanged(showProtected,cookieProtected,"input.libraryFilterProtected",prevShow)});$filterHtml.show();$("table.members[id^='memberList']").before($filterHtml)}}function tryFilterMembers(){var containsMemberToFilter=!1;return $("tr[data]").each(function(){var dataValue=$(this).attr("data");dataValue.indexOf(dataInherited)>=0&&(showInherited||$(this).hide(),containsMemberToFilter=!0);dataValue.indexOf(dataProtected)>=0&&(showProtected||$(this).hide(),containsMemberToFilter=!0);(showInherited||showProtected)&&dataValue.indexOf(dataInherited)>=0&&dataValue.indexOf(dataProtected)>=0&&$(this).show()}),showInherited&&showProtected||toggleEmptyWarning(),containsMemberToFilter}function memberFilterChanged(showMembers,cookie,filterSelector,prevShow){epx.utilities.setCookie(cookie,showMembers,365,"/",".microsoft.com",null);$(filterSelector).prop("checked",showMembers);showMembers!=prevShow&&toggleMemberFilter()}function toggleMemberFilter(){$("tr[data]").each(function(){var dataValue=$(this).attr("data");dataValue.indexOf(dataInherited)>=0&&$(this).toggle(showInherited);dataValue.indexOf(dataProtected)>=0&&$(this).toggle(showProtected);(showInherited||showProtected)&&dataValue.indexOf(dataInherited)>=0&&dataValue.indexOf(dataProtected)>=0&&$(this).toggle(showInherited||showProtected)});toggleEmptyWarning()}function toggleEmptyWarning(){$("tr.emptyWarning").hide();showInherited&&showProtected||$("table.members[id^='memberList']").each(function(){var $memberTable=$(this),$warning;containsVisibleMember($memberTable)||($warning=$memberTable.find("tr.emptyWarning"),$warning.length>0?$warning.show():$memberTable.find("tbody").append('<tr class="emptyWarning"><td colspan="3">'+$("#libraryMemberFilterEmptyWarning").val()+"<\/td><\/tr>"))})}function containsVisibleMember($table){var result=!1;return $table.find("tr[data]").each(function(){if($(this).is(":visible")||$(this).css("display")!="none")return result=!0,!1}),result}var dataInherited="inherited;",dataProtected="protected;",cookieInherited="libraryShowInherited",cookieProtected="libraryShowProtected",showInherited=!0,showProtected=!0;return{init:init,tryFilterMembers:tryFilterMembers,memberFilterChanged:memberFilterChanged}}();$(document).ready(function(){epx.library.memberFilter.init()});;
epx=window.epx||{};epx.library=window.epx.library||{};epx.library.tocFixedModule=function(w,d){function init(){if(!epx.topic||epx.topic.isPrintExperience()!==!0){var $paramters=$("#fixLeftNavParameters"),param=$paramters.length>0?$paramters.val().split(","):null;($leftNav=param!=null&&param[1]!=null?$(param[1]):$("#leftNav"),$toc=param!=null&&param[2]!=null?$(param[2]):$("#tocnav"),$footer=$("#ux-footer"),w&&d&&$leftNav.length!==0&&$toc.length!==0&&$footer.length!==0)&&(param!=null&&param[0]!=null&&(fixedTocTop=Number(param[0])),$(w).scroll(function(){setPosition()}),$(w).resize(function(){setPosition()}))}}function setPosition(){var tocHeight=$toc.height(),nonFooterViewable;$(w).height()>tocHeight&&$(w).scrollTop()+fixedTocTop>$leftNav.offset().top?($toc.width($leftNav.width()).css("position","fixed"),$leftNav.css("height",$toc.height()),nonFooterViewable=$(d).height()-$footer.height()-$(w).scrollTop()-60,nonFooterViewable>=tocHeight+fixedTocTop?$toc.css("top",fixedTocTop+"px"):$toc.css("top",(tocHeight-nonFooterViewable)*-1)):($toc.css("width","").css("position","").css("top",""),$leftNav.css("height","auto"))}var $leftNav,$toc,$footer,fixedTocTop=60;return{init:init,setPosition:setPosition}};epx.library.tocFixed=epx.library.tocFixedModule(window,document);$(document).ready(function(){epx.library.tocFixed.init()});;
epx=window.epx||{};epx.windowsRating=function(){function init(){$yesNoSection=$("#ux-footer #ratingSection1");$submitSection=$("#ux-footer #ratingSection2");$thankYouSection=$("#ux-footer #ratingSection3");$submitButton=$("#ux-footer #ratingSubmit");$skipThisButton=$("#ux-footer #ratingSkipThis");$("#ux-footer #footerSock div.rating").show();toggleRatingEnablement();setupEventHandlers()}function toggleRatingEnablement(){$("#isTopicRated").val()==="true"&&showSection($thankYouSection)}function setupEventHandlers(){$("#ux-footer #ratingYes").click(function(){$("#ux-footer #ratingValue").val(yesRating);showSection($submitSection)});$("#ux-footer #ratingNo").click(function(){$("#ux-footer #ratingValue").val(noRating);showSection($submitSection)});$submitButton.click(function(){submitRating($("#ux-footer div.rating textarea").val())});$skipThisButton.click(function(){submitRating(null)})}function showSection($section){$yesNoSection.hide();$submitSection.hide();$thankYouSection.hide();$section.show();$section===$thankYouSection&&($("#rateThisTopic").hide(),$("#rateThisPrefix").hide())}function submitRating(text){$submitButton.attr("disabled","disabled");$skipThisButton.attr("disabled","disabled");var data={__RequestVerificationToken:$("input[name='__RequestVerificationToken']").last().val(),rdIsUseful:$("#ux-footer #ratingValue").val(),feedbackText:text,returnUrl:window.location.href,isAsync:!0},url=$("#ratingSubmitUrl").val();$.ajax({type:"POST",url:url,data:data,async:!0,success:function(){epx.utilities.log("Rating successfully submitted");showSection($thankYouSection)},error:function(response){epx.utilities.log("Rating submission failed: HTTP "+response.status);showSection($thankYouSection)}})}var yesRating=1,noRating=0,$yesNoSection,$submitSection,$thankYouSection,$submitButton,$skipThisButton;return{init:init}}();$(document).ready(function(){epx.windowsRating.init()});;
epx=window.epx||{};epx.codeSnippetModule=function(w,d){function init(){scrollOnLoad();initCopyLinks()}function initCopyLinks(){w.clipboardData&&$("a[name=CodeSnippetCopyLink]").css("display","block")}function copyCode(id){if(w.clipboardData){var obj=d.getElementById(id);w.clipboardData.setData("Text",obj.innerText)}}function scrollOnLoad(){var hash=location.hash,hashY;hash.length>1&&hash.substr(1,1)==="Y"&&(hashY=Number(hash.substr(2)),isNaN(hashY)||w.scrollTo(0,hashY))}return{init:init,initCopyLinks:initCopyLinks,copyCode:copyCode,scrollOnLoad:scrollOnLoad}};epx.codeSnippet=epx.codeSnippetModule(window,document);$(document).ready(function(){epx.codeSnippet.init()});;
function TopicNotInScope_ShowPicker(){var topicNotInScopePicker=document.getElementById("topicNotInScopeCollectionPicker");topicNotInScopePicker&&(topicNotInScopePicker.style.display=topicNotInScopePicker.style.display!="block"?"block":"none")}function TopicNotInScope_HidePicker(e){var topicNotInScopePicker=document.getElementById("topicNotInScopeCollectionPicker"),src,e;topicNotInScopePicker&&(e=e||window.event,e.target?src=e.target:e.srcElement&&(src=e.srcElement),src.tagName=="A"&&src.parentNode.parentNode&&src.parentNode.parentNode.id=="topicNotInScopeCollectionPicker"||src.id=="topicNotInScopeSwitchCollection"||src.id=="topicNotInScopeDropdownImage"||src.id=="topicNotInScopeSwitchCollectionContainer"||topicNotInScopePicker.style.display!="block"||(topicNotInScopePicker.style.display="none"))}document.addEventListener?document.addEventListener("mouseup",TopicNotInScope_HidePicker,!1):document.attachEvent&&document.attachEvent("onmouseup",TopicNotInScope_HidePicker);;
epx=window.epx||{};epx.collapsibleArea=function(){function init(){$expandCollapseAllButton=$("a#expandCollapseAll");$titleAnchor=$("a.LW_CollapsibleArea_TitleAhref");$titleAnchor.length===0&&(isEnhanced=!1);$expandCollapseAllButton.length===0&&(isEnhanced=!1);isEnhanced||$expandCollapseAllButton.hide();expandedCaretClass="cl_CollapsibleArea_expanding LW_CollapsibleArea_Img";collapsedCaretClass="cl_CollapsibleArea_collapsing LW_CollapsibleArea_Img";expandedCaretSelector="span.cl_CollapsibleArea_expanding.LW_CollapsibleArea_Img";collapsedCaretSelector="span.cl_CollapsibleArea_collapsing.LW_CollapsibleArea_Img";var stringsAvailable=typeof window.MTPS!="undefined"&&typeof window.MTPS.LocalizedStrings!="undefined";stringsAvailable&&(isEnhanced?(expandTooltip=window.MTPS.LocalizedStrings.EnhancedExpandTooltip,collapseTooltip=window.MTPS.LocalizedStrings.EnhancedCollapseTooltip):(expandTooltip=window.MTPS.LocalizedStrings.ExpandButtonTooltip,collapseTooltip=window.MTPS.LocalizedStrings.CollapseButtonTooltip),$(".cl_CollapsibleArea_expanding").parent().attr("title",collapseTooltip),$(".cl_CollapsibleArea_collapsing").parent().attr("title",expandTooltip),$(collapsedCaretSelector).length===0&&$expandCollapseAllButton.text(window.MTPS.LocalizedStrings.CollapseAllButtonTooltip));setupEventHandlers()}function titleAnchorClicked(){var $this=$(this),$image=$this.children("span").first(),$content=$this.parent().parent().next();$image&&$content&&($this.removeAttr("title"),$content.attr("class")==="sectionblock"?($image.attr("class",collapsedCaretClass),$content.attr("class","sectionnone"),$this.attr("title",expandTooltip),$image.attr("title",expandTooltip)):($image.attr("class",expandedCaretClass),$content.attr("class","sectionblock"),$this.attr("title",collapseTooltip),$image.attr("title",collapseTooltip)),setECAButtonText())}function expandCollapseAllButtonClicked(){$(this).text()===window.MTPS.LocalizedStrings.ExpandAllButtonTooltip?expandAll():collapseAll()}function collapseAll(){$(expandedCaretSelector).parent().click();$expandCollapseAllButton.text(window.MTPS.LocalizedStrings.ExpandAllButtonTooltip)}function expandAll(){$(collapsedCaretSelector).parent().click();$expandCollapseAllButton.text(window.MTPS.LocalizedStrings.CollapseAllButtonTooltip)}function expandCollapseAll(){if(isEnhanced){var $eca=$(this);$eca.hasClass("LW_CollapsibleArea_Title")&&($eca=$($eca.parent().children().first()));$eca.hasClass("cl_CollapsibleArea_collapsing")?expandAll():$eca.hasClass("cl_CollapsibleArea_expanding")&&collapseAll();$("html, body").scrollTop($eca.offset().top-10)}}function setupEventHandlers(){$titleAnchor.click(titleAnchorClicked);$expandCollapseAllButton.click(expandCollapseAllButtonClicked);$("span.LW_CollapsibleArea_Img").dblclick(expandCollapseAll);$("span.LW_CollapsibleArea_Title").dblclick(expandCollapseAll)}function setECAButtonText(){$(collapsedCaretSelector).length===0?$expandCollapseAllButton.text(window.MTPS.LocalizedStrings.CollapseAllButtonTooltip):$(expandedCaretSelector).length===0&&$expandCollapseAllButton.text(window.MTPS.LocalizedStrings.ExpandAllButtonTooltip)}var isEnhanced=!0,expandTooltip="",collapseTooltip="",expandedCaretClass="",collapsedCaretClass="",expandedCaretSelector="",collapsedCaretSelector="",$expandCollapseAllButton,$titleAnchor;return{init:init}}();$(document).ready(function(){epx.collapsibleArea.init()});;
epx=window.epx||{};epx.versionSelector=function(){function init(){$link&&$arrow&&$list&&($link.live("click",function(){epx.versionSelector.open()}),$arrow.live("click",function(){epx.versionSelector.open()}),$(document).live("mouseup",function(){epx.versionSelector.close()}))}function open(){$list.show()}function close(){$list.hide()}var $link=$("#vsLink"),$arrow=$("#vsArrow"),$list=$("#vsPanel");return{init:init,open:open,close:close}}();$(document).ready(function(){epx.versionSelector.init()});;
var isMetroIE10=navigator.userAgent.indexOf("MSIE 10.0")!=-1&&window.innerWidth==screen.width&&window.innerHeight==screen.height,brokerScript;isMetroIE10||(brokerScript=document.createElement("script"),brokerScript.src=window.location.protocol=="https:"?"https://www.microsoft.com/library/svy/sto/https/broker.js":"//js.microsoft.com/library/svy/sto/broker.js",document.getElementsByTagName("head")[0].appendChild(brokerScript));;