<!DOCTYPE html>
<html lang="en" >

<head>
	<script type="text/javascript">
window.TSMark = function(mark_label) {
	if (!window.performance || !window.performance.mark) return;
	performance.mark(mark_label);
}
TSMark('start_load');
window.TSMeasureAndBeacon = function(measure_label, start_mark_label) {
	if (start_mark_label === 'start_nav' && window.performance && window.performance.timing) {
		TSBeacon(measure_label, (new Date()).getTime() - performance.timing.navigationStart);
		return;
	}
	if (!window.performance || !window.performance.mark || !window.performance.measure) return;
	performance.mark(start_mark_label + '_end');
	try {
		performance.measure(measure_label, start_mark_label, start_mark_label + '_end');
		TSBeacon(measure_label, performance.getEntriesByName(measure_label)[0].duration);
	} catch(e) { return; }
}
window.TSBeacon = function(label, value) {
	(new Image()).src = "https:\/\/slack.com\/beacon\/timing" + '?data=' + encodeURIComponent(label + ':' + value);
}
</script>	<noscript><meta http-equiv="refresh" content="0; URL=/files/arsiatakeh/F0B12J5NJ/twitterr.r?nojsmode=1" /></noscript>
<script type="text/javascript">
window.load_start_ms = Date.now();
window.load_log = [];
window.logLoad = function(k) {
	var ms = Date.now();
	var secs = (ms-window.load_start_ms)/1000;

	window.load_log.push({
		k: k,
		t: secs
	})
	
	if (window.TS) {
		TS.log(88, secs+' '+k);
	}
}
if(self!==top)window.document.write("\u003Cstyle>body * {display:none !important;}\u003C\/style>\u003Ca href=\"#\" onclick="+
"\"top.location.href=window.location.href\" style=\"display:block !important;padding:10px\">Go to Slack.com\u003C\/a>");
</script>


<script type="text/javascript">
window.callSlackAPIUnauthed = function(method, args, callback) {
	var url = '/api/'+method+'?t='+Date.now();
	var req = new XMLHttpRequest();
	
	req.onreadystatechange = function() {
		if (req.readyState == 4) {
			req.onreadystatechange = null;
			var obj;
			
			if (req.status == 200) {
				if (req.responseText.indexOf('{') == 0) {
					try {
						eval('obj = '+req.responseText);
					} catch (err) {
						console.warn('unable to do anything with api rsp');
					}
				}
			}
			
			obj = obj || {
				ok: false	
			}
			
			callback(obj.ok, obj, args);
		}
	}
	
	req.open('POST', url, 1);
	req.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');

	var args2 = [];
	for (i in args) {
		args2[args2.length] = encodeURIComponent(i)+'='+encodeURIComponent(args[i]);
	}

	req.send(args2.join('&'));
}
</script>

			
	
	<script type="text/javascript">
		(function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
		(i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
		m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
		})(window,document,'script','//www.google-analytics.com/analytics.js','ga');
		ga('create', "UA-106458-17", 'slack.com');
				ga('send', 'pageview');

		
		(function(e,c,b,f,d,g,a){e.SlackBeaconObject=d;
		e[d]=e[d]||function(){(e[d].q=e[d].q||[]).push([1*new Date(),arguments])};
		e[d].l=1*new Date();g=c.createElement(b);a=c.getElementsByTagName(b)[0];
		g.async=1;g.src=f;a.parentNode.insertBefore(g,a)
		})(window,document,"script","https://slack.global.ssl.fastly.net/dcf8/js/libs/beacon.js","sb");
		sb('set', 'token', '3307f436963e02d4f9eb85ce5159744c');

					sb('set', 'user_id', "U0ASB8NTH");
							sb('set', 'user_' + "batch", "?");
							sb('set', 'user_' + "created", "2015-09-17");
						sb('set', 'name_tag', "hacktheweather-sf" + '/' + "abhishm");
				sb('track', 'pageview');

		function track(a){ga('send','event','web',a);sb('track',a);}

	</script>


		<script type='text/javascript'>
		
		(function(f,b){if(!b.__SV){var a,e,i,g;window.mixpanel=b;b._i=[];b.init=function(a,e,d){function f(b,h){var a=h.split(".");2==a.length&&(b=b[a[0]],h=a[1]);b[h]=function(){b.push([h].concat(Array.prototype.slice.call(arguments,0)))}}var c=b;"undefined"!==typeof d?c=b[d]=[]:d="mixpanel";c.people=c.people||[];c.toString=function(b){var a="mixpanel";"mixpanel"!==d&&(a+="."+d);b||(a+=" (stub)");return a};c.people.toString=function(){return c.toString(1)+".people (stub)"};i="disable track track_pageview track_links track_forms register register_once alias unregister identify name_tag set_config people.set people.set_once people.increment people.append people.track_charge people.clear_charges people.delete_user".split(" ");
		for(g=0;g<i.length;g++)f(c,i[g]);b._i.push([a,e,d])};b.__SV=1.2;a=f.createElement("script");a.type="text/javascript";a.async=!0;a.src="//cdn.mxpnl.com/libs/mixpanel-2-latest.min.js";e=f.getElementsByTagName("script")[0];e.parentNode.insertBefore(a,e)}})(document,window.mixpanel||[]);
		

		mixpanel.init("12d52d8633a5b432975592d13ebd3f34");

		
			function mixpanel_track(){if(window.mixpanel)mixpanel.track.apply(mixpanel, arguments);}
			function mixpanel_track_forms(){if(window.mixpanel)mixpanel.track_forms.apply(mixpanel, arguments);}
			function mixpanel_track_links(){if(window.mixpanel)mixpanel.track_links.apply(mixpanel, arguments);}
		
	</script>
	
			<meta name="referrer" content="no-referrer">
			<meta name="superfish" content="nofish">
	<script type="text/javascript">



var TS_last_log_date = null;
var TSMakeLogDate = function() {
	var date = new Date();

	var y = date.getFullYear();
	var mo = date.getMonth()+1;
	var d = date.getDate();

	var time = {
	  h: date.getHours(),
	  mi: date.getMinutes(),
	  s: date.getSeconds(),
	  ms: date.getMilliseconds()
	};

	Object.keys(time).map(function(moment, index) {
		if(time[moment] < 10) {
			time[moment] = '0' + time[moment];
		}
	});

	var str = y + '/' + mo + '/' + d + ' ' + time.h + ':' + time.mi + ':' + time.s + '.' + time.ms;
	if (TS_last_log_date) {
		var diff = date-TS_last_log_date;
		//str+= ' ('+diff+'ms)';
	}
	TS_last_log_date = date;
	return str+' ';
}

var TSSSB = {
	env: (function() {
		var v = {
			win_ssb_version: null,
			win_ssb_version_minor: null,
			mac_ssb_version: null,
			mac_ssb_version_minor: null,
			lin_ssb_version: null,
			lin_ssb_version_minor: null
		}
		
		var is_win = (navigator.appVersion.indexOf("Windows") !== -1);
		var is_lin = (navigator.appVersion.indexOf("Linux") !== -1);
		var is_mac = !!(navigator.userAgent.match(/(OS X)/g));

		if (navigator.userAgent.match(/(Slack_SSB)/g) || navigator.userAgent.match(/(Slack_WINSSB)/g)) {
			// Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/534.55.3 (KHTML, like Gecko) Slack_SSB/0.32
			var parts = navigator.userAgent.split('/');
			var version_str = parts[parts.length-1];
			var version_float = parseFloat(version_str);
			var versionA = version_str.split('.');
			var version_minor = (versionA.length == 3) ? parseInt(versionA[2]) : 0;
	
			if (navigator.userAgent.match(/(AtomShell)/g)) {
				// Electron-based app
				if (is_lin) {
					v.lin_ssb_version = version_float;
					v.lin_ssb_version_minor = version_minor;
				} else {
					v.win_ssb_version = version_float;
					v.win_ssb_version_minor = version_minor;
				}
			} else {
				// MacGap-based app
				v.mac_ssb_version = version_float;
				v.mac_ssb_version_minor = version_minor;
			}
		}

		return v;
	})(),
	
	

	call: function() {
		return false;
	}

	
}

</script>	<script type="text/javascript">
		
		var was_TS = window.TS;
		delete window.TS;
		TSSSB.call('didFinishLoading');
		if (was_TS) window.TS = was_TS;
	</script>
	    <meta charset="utf-8">
    <title>TwitterR.R | Hack The Weather SF Slack</title>
    <meta name="author" content="Slack">

	
				
				
	
					
		
				<!-- output_css "core" -->
    <link href="https://slack.global.ssl.fastly.net/ddbc/style/rollup-plastic.css" rel="stylesheet" type="text/css">

		<!-- output_css "before_file_pages" -->
    <link href="https://slack.global.ssl.fastly.net/e9e7/style/libs/codemirror.css" rel="stylesheet" type="text/css">

	<!-- output_css "file_pages" -->
    <link href="https://slack.global.ssl.fastly.net/af01/style/rollup-file_pages.css" rel="stylesheet" type="text/css">

	<!-- output_css "regular" -->
    <link href="https://slack.global.ssl.fastly.net/ed33/style/print.css" rel="stylesheet" type="text/css">
    <link href="https://slack.global.ssl.fastly.net/1e63/style/libs/lato-1.css" rel="stylesheet" type="text/css">
    <link href="https://slack.global.ssl.fastly.net/365f/style/filter_select.css" rel="stylesheet" type="text/css">

	

	
	
	

	<!--[if lt IE 9]>
	<script src="https://slack.global.ssl.fastly.net/ef0d/js/libs/html5shiv.js"></script>
	<![endif]-->

	
<link id="favicon" rel="shortcut icon" href="https://slack.global.ssl.fastly.net/66f9/img/icons/favicon-32.png" sizes="16x16 32x32 48x48" type="image/png" />

<link rel="icon" href="https://slack.global.ssl.fastly.net/ba3c/img/icons/app-256.png" sizes="256x256" type="image/png" />

<link rel="apple-touch-icon-precomposed" sizes="152x152" href="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-152.png" />
<link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-144.png" />
<link rel="apple-touch-icon-precomposed" sizes="120x120" href="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-120.png" />
<link rel="apple-touch-icon-precomposed" sizes="114x114" href="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-114.png" />
<link rel="apple-touch-icon-precomposed" sizes="72x72" href="https://slack.global.ssl.fastly.net/0dc1/img/icons/ios-72.png" />
<link rel="apple-touch-icon-precomposed" href="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-57.png" />

<meta name="msapplication-TileColor" content="#FFFFFF" />
<meta name="msapplication-TileImage" content="https://slack.global.ssl.fastly.net/66f9/img/icons/app-144.png" />	<script>
!function(a,b){function c(a,b){try{if("function"!=typeof a)return a;if(!a.bugsnag){var c=e();a.bugsnag=function(d){if(b&&b.eventHandler&&(u=d),v=c,!y){var e=a.apply(this,arguments);return v=null,e}try{return a.apply(this,arguments)}catch(f){throw l("autoNotify",!0)&&(x.notifyException(f,null,null,"error"),s()),f}finally{v=null}},a.bugsnag.bugsnag=a.bugsnag}return a.bugsnag}catch(d){return a}}function d(){B=!1}function e(){var a=document.currentScript||v;if(!a&&B){var b=document.scripts||document.getElementsByTagName("script");a=b[b.length-1]}return a}function f(a){var b=e();b&&(a.script={src:b.src,content:l("inlineScript",!0)?b.innerHTML:""})}function g(b){var c=l("disableLog"),d=a.console;void 0===d||void 0===d.log||c||d.log("[Bugsnag] "+b)}function h(b,c,d){if(d>=5)return encodeURIComponent(c)+"=[RECURSIVE]";d=d+1||1;try{if(a.Node&&b instanceof a.Node)return encodeURIComponent(c)+"="+encodeURIComponent(r(b));var e=[];for(var f in b)if(b.hasOwnProperty(f)&&null!=f&&null!=b[f]){var g=c?c+"["+f+"]":f,i=b[f];e.push("object"==typeof i?h(i,g,d):encodeURIComponent(g)+"="+encodeURIComponent(i))}return e.join("&")}catch(j){return encodeURIComponent(c)+"="+encodeURIComponent(""+j)}}function i(a,b){if(null==b)return a;a=a||{};for(var c in b)if(b.hasOwnProperty(c))try{a[c]=b[c].constructor===Object?i(a[c],b[c]):b[c]}catch(d){a[c]=b[c]}return a}function j(a,b){a+="?"+h(b)+"&ct=img&cb="+(new Date).getTime();var c=new Image;c.src=a}function k(a){var b={},c=/^data\-([\w\-]+)$/;if(a)for(var d=a.attributes,e=0;e<d.length;e++){var f=d[e];if(c.test(f.nodeName)){var g=f.nodeName.match(c)[1];b[g]=f.value||f.nodeValue}}return b}function l(a,b){C=C||k(J);var c=void 0!==x[a]?x[a]:C[a.toLowerCase()];return"false"===c&&(c=!1),void 0!==c?c:b}function m(a){return a&&a.match(D)?!0:(g("Invalid API key '"+a+"'"),!1)}function n(b,c){var d=l("apiKey");if(m(d)&&A){A-=1;var e=l("releaseStage"),f=l("notifyReleaseStages");if(f){for(var h=!1,k=0;k<f.length;k++)if(e===f[k]){h=!0;break}if(!h)return}var n=[b.name,b.message,b.stacktrace].join("|");if(n!==w){w=n,u&&(c=c||{},c["Last Event"]=q(u));var o={notifierVersion:H,apiKey:d,projectRoot:l("projectRoot")||a.location.protocol+"//"+a.location.host,context:l("context")||a.location.pathname,userId:l("userId"),user:l("user"),metaData:i(i({},l("metaData")),c),releaseStage:e,appVersion:l("appVersion"),url:a.location.href,userAgent:navigator.userAgent,language:navigator.language||navigator.userLanguage,severity:b.severity,name:b.name,message:b.message,stacktrace:b.stacktrace,file:b.file,lineNumber:b.lineNumber,columnNumber:b.columnNumber,payloadVersion:"2"},p=x.beforeNotify;if("function"==typeof p){var r=p(o,o.metaData);if(r===!1)return}return 0===o.lineNumber&&/Script error\.?/.test(o.message)?g("Ignoring cross-domain script error. See https://bugsnag.com/docs/notifiers/js/cors"):(j(l("endpoint")||G,o),void 0)}}}function o(){var a,b,c=10,d="[anonymous]";try{throw new Error("")}catch(e){a="<generated>\n",b=p(e)}if(!b){a="<generated-ie>\n";var f=[];try{for(var h=arguments.callee.caller.caller;h&&f.length<c;){var i=E.test(h.toString())?RegExp.$1||d:d;f.push(i),h=h.caller}}catch(j){g(j)}b=f.join("\n")}return a+b}function p(a){return a.stack||a.backtrace||a.stacktrace}function q(a){var b={millisecondsAgo:new Date-a.timeStamp,type:a.type,which:a.which,target:r(a.target)};return b}function r(a){if(a){var b=a.attributes;if(b){for(var c="<"+a.nodeName.toLowerCase(),d=0;d<b.length;d++)b[d].value&&"null"!=b[d].value.toString()&&(c+=" "+b[d].name+'="'+b[d].value+'"');return c+">"}return a.nodeName}}function s(){z+=1,a.setTimeout(function(){z-=1})}function t(a,b,c){var d=a[b],e=c(d);a[b]=e}var u,v,w,x={},y=!0,z=0,A=10;x.noConflict=function(){return a.Bugsnag=b,x},x.refresh=function(){A=10},x.notifyException=function(a,b,c,d){b&&"string"!=typeof b&&(c=b,b=void 0),c||(c={}),f(c),n({name:b||a.name,message:a.message||a.description,stacktrace:p(a)||o(),file:a.fileName||a.sourceURL,lineNumber:a.lineNumber||a.line,columnNumber:a.columnNumber?a.columnNumber+1:void 0,severity:d||"warning"},c)},x.notify=function(b,c,d,e){n({name:b,message:c,stacktrace:o(),file:a.location.toString(),lineNumber:1,severity:e||"warning"},d)};var B="complete"!==document.readyState;document.addEventListener?(document.addEventListener("DOMContentLoaded",d,!0),a.addEventListener("load",d,!0)):a.attachEvent("onload",d);var C,D=/^[0-9a-f]{32}$/i,E=/function\s*([\w\-$]+)?\s*\(/i,F="https://notify.bugsnag.com/",G=F+"js",H="2.4.7",I=document.getElementsByTagName("script"),J=I[I.length-1];if(a.atob){if(a.ErrorEvent)try{0===new a.ErrorEvent("test").colno&&(y=!1)}catch(K){}}else y=!1;if(l("autoNotify",!0)){t(a,"onerror",function(b){return function(c,d,e,g,h){var i=l("autoNotify",!0),j={};!g&&a.event&&(g=a.event.errorCharacter),f(j),v=null,i&&!z&&n({name:h&&h.name||"window.onerror",message:c,file:d,lineNumber:e,columnNumber:g,stacktrace:h&&p(h)||o(),severity:"error"},j),b&&b(c,d,e,g,h)}});var L=function(a){return function(b,d){if("function"==typeof b){b=c(b);var e=Array.prototype.slice.call(arguments,2);return a(function(){b.apply(this,e)},d)}return a(b,d)}};t(a,"setTimeout",L),t(a,"setInterval",L),a.requestAnimationFrame&&t(a,"requestAnimationFrame",function(a){return function(b){return a(c(b))}}),a.setImmediate&&t(a,"setImmediate",function(a){return function(){var b=Array.prototype.slice.call(arguments);return b[0]=c(b[0]),a.apply(this,b)}}),"EventTarget Window Node ApplicationCache AudioTrackList ChannelMergerNode CryptoOperation EventSource FileReader HTMLUnknownElement IDBDatabase IDBRequest IDBTransaction KeyOperation MediaController MessagePort ModalWindow Notification SVGElementInstance Screen TextTrack TextTrackCue TextTrackList WebSocket WebSocketWorker Worker XMLHttpRequest XMLHttpRequestEventTarget XMLHttpRequestUpload".replace(/\w+/g,function(b){var d=a[b]&&a[b].prototype;d&&d.hasOwnProperty&&d.hasOwnProperty("addEventListener")&&(t(d,"addEventListener",function(a){return function(b,d,e,f){return d&&d.handleEvent&&(d.handleEvent=c(d.handleEvent,{eventHandler:!0})),a.call(this,b,c(d,{eventHandler:!0}),e,f)}}),t(d,"removeEventListener",function(a){return function(b,d,e,f){return a.call(this,b,d,e,f),a.call(this,b,c(d),e,f)}}))})}a.Bugsnag=x,"function"==typeof define&&define.amd?define([],function(){return x}):"object"==typeof module&&"object"==typeof module.exports&&(module.exports=x)}(window,window.Bugsnag);
Bugsnag.apiKey = "2a86b308af5a81d2c9329fedfb4b30c7";
Bugsnag.appVersion = "fca042f9e24d6f3b2862c530bfdeb537511b19cf" + '-' + "1442762476";
Bugsnag.endpoint = "https://errors-webapp.slack-core.com/js";
Bugsnag.releaseStage = "prod";
Bugsnag.autoNotify = false;
Bugsnag.user = {id:"U0ASB8NTH",name:"abhishm",email:"wiseemperor.abhis@gmail.com"};
Bugsnag.metaData = {};
Bugsnag.metaData.team = {id:"T09FE4CN5",name:"Hack The Weather SF",domain:"hacktheweather-sf"};
Bugsnag.refresh_interval = setInterval(function () { (window.TS && window.TS.client) ? Bugsnag.refresh() : clearInterval(Bugsnag.refresh_interval); }, 15 * 60 * 1000);
</script>
</head>

<body class="">

		  			<script>
		
			var w = Math.max(document.documentElement.clientWidth, window.innerWidth || 0);
			if (w > 1440) document.querySelector('body').classList.add('widescreen');
		
		</script>
	
  	
	

			<nav id="site_nav" class="no_transition">

	<div id="site_nav_contents">

		<div id="user_menu">
			<div id="user_menu_contents">
				<div id="user_menu_avatar">
										<span class="member_image thumb_48" style="background-image: url('https://secure.gravatar.com/avatar/fb97783cabc03655679531845aa33aed.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014.png')" data-thumb-size="48" data-member-id="U0ASB8NTH"></span>
					<span class="member_image thumb_36" style="background-image: url('https://secure.gravatar.com/avatar/fb97783cabc03655679531845aa33aed.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png')" data-thumb-size="36" data-member-id="U0ASB8NTH"></span>
				</div>
				<h3>Signed in as</h3>
				<span id="user_menu_name">abhishm</span>
			</div>
		</div>

		<div class="nav_contents">

			<ul class="primary_nav">
				<li><a href="/home"><i class="ts_icon ts_icon_home"></i>Home</a></li>
				<li><a href="/account"><i class="ts_icon ts_icon_user"></i>Account & Profile</a></li>
				<li><a href="/services/new"><i class="ts_icon ts_icon_plug"></i>Integrations</a></li>
				<li><a href="/archives"><i class="ts_icon ts_icon_inbox"></i>Message Archives</a></li>
				<li><a href="/files"><i class="ts_icon ts_icon_file"></i>Files</a></li>
				<li><a href="/team"><i class="ts_icon ts_icon_team_directory"></i>Team Directory</a></li>
									<li><a href="/stats"><i class="ts_icon ts_icon_dashboard"></i>Statistics</a></li>
													<li><a href="/customize"><i class="ts_icon ts_icon_magic"></i>Customize</a></li>
													<li><a href="/account/team"><i class="ts_icon ts_icon_cog_o"></i>Team Settings</a></li>
							</ul>

			
		</div>

		<div id="footer">

			<ul id="footer_nav">
				<li><a href="/is">Tour</a></li>
				<li><a href="/apps">Apps</a></li>
				<li><a href="/brand-guidelines">Brand Guidelines</a></li>
				<li><a href="/help">Help</a></li>
				<li><a href="https://api.slack.com" target="_blank">API<i class="ts_icon ts_icon_external_link small_left_margin ts_icon_inherit"></i></a></li>
								<li><a href="/pricing">Pricing</a></li>
				<li><a href="/help/requests/new">Contact</a></li>
				<li><a href="/terms-of-service">Policies</a></li>
				<li><a href="http://slackhq.com/" target="_blank">Our Blog</a></li>
				<li><a href="https://slack.com/signout/9524148753?crumb=s-1442781518-144a1c0f3c-%E2%98%83">Sign Out<i class="ts_icon ts_icon_sign_out small_left_margin ts_icon_inherit"></i></a></li>
			</ul>

			<p id="footer_signature">Made with <i class="ts_icon ts_icon_heart"></i> by Slack</p>

		</div>

	</div>
</nav>	
			<header>
							<a id="menu_toggle" class="no_transition">
					<span class="menu_icon"></span>
					<span class="menu_label">Menu</span>
					<span class="vert_divider"></span>
				</a>
				<h1 id="header_team_name" class="inline_block no_transition">
					<a href="/home">
						<i class="ts_icon ts_icon_home" /></i>
						Hack The Weather SF
					</a>
				</h1>
				<div class="header_nav">
					<div class="header_btns float_right">
						<a id="team_switcher">
							<i class="ts_icon ts_icon_th_large ts_icon_inherit"></i>
							<span class="block label">Teams</span>
						</a>
						<a href="/help" id="help_link">
							<i class="ts_icon ts_icon_life_ring ts_icon_inherit"></i>
							<span class="block label">Help</span>
						</a>
						<a href="/messages">
							<img src="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-64.png" srcset="https://slack.global.ssl.fastly.net/66f9/img/icons/ios-32.png 1x, https://slack.global.ssl.fastly.net/66f9/img/icons/ios-64.png 2x" />
							<span class="block label">Launch</span>
						</a>
					</div>
								                    <ul id="header_team_nav">
			                        			                            <li class="active">
			                            	<a href="https://hacktheweather-sf.slack.com/home" target="https://hacktheweather-sf.slack.com/">
			                            					                            			<i class="ts_icon ts_icon_check_circle_o active_icon"></i>
			                            					                            						                            		<i class="team_icon" style="background-image: url('https://s3-us-west-2.amazonaws.com/slack-files2/avatars/2015-08-22/9523962722_0f27153547609d85f8c8_88.jpg');"></i>
				                            				                            		<span class="switcher_label team_name">Hack The Weather SF</span>
			                            	</a>
			                            </li>
			                        			                        <li id="add_team_option"><a href="https://slack.com/signin" target="_blank"><i class="ts_icon ts_icon_plus team_icon"></i> <span class="switcher_label">Sign in to another team...</span></a></li>
			                    </ul>
			                				</div>
			
			
		</header>
	
	<div id="page" >

		<div id="page_contents" class="">

<p class="print_only">
	<strong>Created by Arsia Takeh on September 20, 2015 at 12:58 PM</strong><br />
	<span class="subtle_silver break_word">https://hacktheweather-sf.slack.com/files/arsiatakeh/F0B12J5NJ/twitterr.r</span>
</p>

<div class="file_header_container no_print"></div>

<div class="alert_container">
		<div class="file_public_link_shared alert" style="display: none;">
		
	<i class="ts_icon ts_icon_link"></i> Public Link: <a class="file_public_link" href="https://slack-files.com/T09FE4CN5-F0B12J5NJ-c388b66df4" target="new">https://slack-files.com/T09FE4CN5-F0B12J5NJ-c388b66df4</a>
</div></div>

<div id="file_page" class="card top_padding">

	<p class="small subtle_silver no_print meta">
		2KB R snippet created on <span class="date">September 20th 2015</span>.
		This file is private.		<span class="file_share_list"></span>
	</p>

	<a id="file_action_cog" class="action_cog action_cog_snippet float_right no_print">
		<span>Actions </span><i class="ts_icon ts_icon_cog"></i>
	</a>
	<a id="snippet_expand_toggle" class="float_right no_print">
		<i class="ts_icon ts_icon_expand "></i>
		<i class="ts_icon ts_icon_compress hidden"></i>
	</a>

	<div class="large_bottom_margin clearfix">
		<pre id="file_contents">library(ROAuth)
library(streamR)

# Provide access tokens to the Twitter API
requestURL &lt;- &quot;https://api.twitter.com/oauth/request_token&quot;
accessURL &lt;- &quot;https://api.twitter.com/oauth/access_token&quot;
authURL &lt;- &quot;http://api.twitter.com/oauth/authorize&quot;
consumerKey &lt;- &quot;0oGqj0yeQBSUFrtIx7JHPDtf6&quot;
consumerSecret &lt;- &quot;RKTtCk3QgA8V0Zm3VLC0D7VxNObniHt2djUfKv1qIo6XKS2eY2&quot;
my_oauth &lt;- OAuthFactory$new(consumerKey=consumerKey,
                             consumerSecret=consumerSecret, requestURL=requestURL,
                             accessURL=accessURL, authURL=authURL)
my_oauth$handshake(cainfo = system.file(&quot;CurlSSL&quot;, &quot;cacert.pem&quot;, package = &quot;RCurl&quot;))

# Find Keywords while stricting the serach to a aspecific location (USA) and runtime
filterStream(&quot;tweetsCoffee.json&quot;, track=&quot;Coffee&quot;, locations = c(-125, 25, -66, 50), timeout = 180, oauth = my_oauth)

# Parse the data to a data frame
tweets.df &lt;- parseTweets(&quot;tweetsCoffee.json&quot;, verbose = FALSE)

# Plot the data on a USA map
library(ggplot2)
library(grid)
library(maps)
map.data &lt;- map_data(&quot;state&quot;)
points &lt;- data.frame(x = as.numeric(tweets.df$lon), y = as.numeric(tweets.df$lat))
points &lt;- points[points$y &gt; 25, ]
ggplot(map.data) + geom_map(aes(map_id = region), map = map.data, fill = &quot;white&quot;, 
                            color = &quot;grey20&quot;, size = 0.25) + expand_limits(x = map.data$long, y = map.data$lat) + 
        theme(axis.line = element_blank(), axis.text = element_blank(), axis.ticks = element_blank(), 
              axis.title = element_blank(), panel.background = element_blank(), panel.border = element_blank(), 
              panel.grid.major = element_blank(), plot.background = element_blank(), 
              plot.margin = unit(0 * c(-1.5, -1.5, -1.5, -1.5), &quot;lines&quot;)) + geom_point(data = points, 
                                                                                       aes(x = x, y = y), size = 1, alpha = 1/5, color = &quot;darkblue&quot;) + ggtitle(&quot;Coffee&quot;)
</pre>

		<p class="file_page_meta no_print" style="line-height: 1.5rem;">
			<label class="checkbox normal mini float_right no_top_padding no_min_width">
				<input type="checkbox" id="file_preview_wrap_cb"> wrap long lines
			</label>
		</p>

	</div>

	<div id="comments_holder" class="clearfix clear_both">
	<div class="col span_1_of_6"></div>
	<div class="col span_4_of_6 no_right_padding">
		<div id="file_page_comments">
					</div>	
		<form action="https://hacktheweather-sf.slack.com/files/arsiatakeh/F0B12J5NJ/twitterr.r" 
		id="file_comment_form" 
					class="comment_form"
				method="post">
			<a href="/team/abhishm" class="member_preview_link" data-member-id="U0ASB8NTH" >
			<span class="member_image thumb_36" style="background-image: url('https://secure.gravatar.com/avatar/fb97783cabc03655679531845aa33aed.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png')" data-thumb-size="36" data-member-id="U0ASB8NTH"></span>
		</a>		
		<input type="hidden" name="addcomment" value="1" />
	<input type="hidden" name="crumb" value="s-1442781518-25f228a82a-☃" />

	<textarea id="file_comment" data-el-id-to-keep-in-view="file_comment_submit_btn" class="small comment_input small_bottom_margin autogrow-short" name="comment" wrap="virtual" ></textarea>
	<span class="input_note float_left cloud_silver file_comment_tip">shift+enter to add a new line</span>	<button id="file_comment_submit_btn" type="submit" class="btn float_right  ladda-button" data-style="expand-right"><span class="ladda-label">Add Comment</span></button>
</form>

<form
		id="file_edit_comment_form" 
					class="edit_comment_form hidden"
				method="post">
		<textarea id="file_edit_comment" class="small comment_input small_bottom_margin" name="comment" wrap="virtual"></textarea><br>
	<span class="input_note float_left cloud_silver file_comment_tip">shift+enter to add a new line</span>	<input type="submit" class="save btn float_right " value="Save" />
	<button class="cancel btn btn_outline float_right small_right_margin ">Cancel</button>
</form>	
	</div>
	<div class="col span_1_of_6"></div>
</div>
</div>

	

		
	</div>
	<div id="overlay"></div>
</div>





<script type="text/javascript">
var cdn_url = "https:\/\/slack.global.ssl.fastly.net";
var inc_js_setup_data = {
	emoji_sheets: {
		apple: 'https://slack.global.ssl.fastly.net/66f9/img/emoji_2015/sheet_apple_64_indexed_256colors.png',
		google: 'https://slack.global.ssl.fastly.net/66f9/img/emoji_2015/sheet_google_64_indexed_128colors.png',
		twitter: 'https://slack.global.ssl.fastly.net/66f9/img/emoji_2015/sheet_twitter_64_indexed_128colors.png',
		emojione: 'https://slack.global.ssl.fastly.net/66f9/img/emoji_2015/sheet_emojione_64_indexed_128colors.png',
	},
};
</script>
			<script type="text/javascript">
<!--
	// common boot_data
	var boot_data = {
		start_ms: Date.now(),
		app: 'web',
		is_mobile: false,
		user_id: 'U0ASB8NTH',
		version_ts: '1442762476',
		version_uid: 'fca042f9e24d6f3b2862c530bfdeb537511b19cf',
		cache_version: "v10-dog",
		cache_ts_version: "v1-cat",
		redir_domain: 'slack-redir.net',
		signin_url: 'https://slack.com/signin',
		abs_root_url: 'https://slack.com/',
		api_url: '/api/',
		team_url: 'https://hacktheweather-sf.slack.com/',
		image_proxy_url: 'https://slack-imgs.com/',
		beacon_timing_url: 'https://slack.com/beacon/timing',
		api_token: 'xoxs-9524148753-10895294935-10996934864-9a2c0f1373',

		feature_status: false,
		feature_search_attachments: false,
		feature_archive_viewer: true,
		
		notification_sounds: [{"value":"b2.mp3","label":"Ding","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/b2.mp3"},{"value":"animal_stick.mp3","label":"Boing","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/animal_stick.mp3"},{"value":"been_tree.mp3","label":"Drop","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/been_tree.mp3"},{"value":"complete_quest_requirement.mp3","label":"Ta-da","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/complete_quest_requirement.mp3"},{"value":"confirm_delivery.mp3","label":"Plink","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/confirm_delivery.mp3"},{"value":"flitterbug.mp3","label":"Wow","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/flitterbug.mp3"},{"value":"here_you_go_lighter.mp3","label":"Here you go","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/here_you_go_lighter.mp3"},{"value":"hi_flowers_hit.mp3","label":"Hi","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/hi_flowers_hit.mp3"},{"value":"item_pickup.mp3","label":"Yoink","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/item_pickup.mp3"},{"value":"knock_brush.mp3","label":"Knock Brush","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/knock_brush.mp3"},{"value":"save_and_checkout.mp3","label":"Woah!","url":"https:\/\/slack.global.ssl.fastly.net\/dfc0\/sounds\/push\/save_and_checkout.mp3"},{"value":"none","label":"None (sound off)"}],
		alert_sounds: [{"value":"frog.mp3","label":"Frog","url":"https:\/\/slack.global.ssl.fastly.net\/a34a\/sounds\/frog.mp3"}],
		call_sounds: [{"value":"call\/alert.mp3","label":"Alert","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/alert.mp3"},{"value":"call\/incoming_ring.mp3","label":"Incoming ring","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/incoming_ring.mp3"},{"value":"call\/outgoing_ring.mp3","label":"Outgoing ring","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/outgoing_ring.mp3"},{"value":"call\/pop.mp3","label":"Incoming reaction","url":"https:\/\/slack.global.ssl.fastly.net\/a5fb\/sounds\/call\/pop.mp3"},{"value":"call\/they_left_call.mp3","label":"They left call","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/they_left_call.mp3"},{"value":"call\/you_left_call.mp3","label":"You left call","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/you_left_call.mp3"},{"value":"call\/they_joined_call.mp3","label":"They joined call","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/they_joined_call.mp3"},{"value":"call\/you_joined_call.mp3","label":"You joined call","url":"https:\/\/slack.global.ssl.fastly.net\/b6a68\/sounds\/call\/you_joined_call.mp3"}],

		feature_member_viz_perf: false,
		feature_mpim_client: false,
		feature_mpim_launch: false,
		feature_new_message_markup: false,
		feature_ui_reference_v2: false,
		feature_setactive_use_ms: true,
		feature_payments_stripe: true,
		feature_strike: false,
		feature_show_version_info: false,
		feature_ephemeral_attachments: false,
		feature_varietypack_optin: true,
		feature_whitelist_unfurl_video_html: false,
		feature_deprecate_url_download: false,
		feature_reactions: true,
		feature_help_case_feedback: true,
		feature_spaces: true,
		feature_a11y_keyboard_shortcuts: false,
		feature_email_integration: true,
		feature_email_ingestion: false,
		feature_attachments_inline: false,
		feature_fix_files: true,
		feature_files_list: false,
		feature_chat_sounds: false,
		feature_image_proxy: true,
		feature_channel_eventlog_client: true,
		feature_macssb1_banner: true,
		feature_winssb1_banner: true,
		feature_latest_event_ts: true,
		feature_elide_closed_dms: false,
		feature_no_redirects_in_ssb: true,
		feature_referer_policy: true,
		feature_client_exif_orientation_on_uploads: true,
		feature_pricing_page_tweet_carousel: true,
		feature_more_field_in_message_attachments: false,
		feature_user_hidden_msgs: false,
		feature_file_url_private_conversion: false,
		feature_screenhero: false,
		feature_custom_fields: false,
		feature_integrations_message_preview: false,
		feature_client_integration_management: true,
		feature_slash_commands_settings: false,
		feature_lite_to_free: true,
		feature_bot_profile: false,
		feature_two_factor_via_sms: true,
		feature_two_factor_for_teams: false,
		feature_private_channels: false,
		feature_channel_details: false,
		feature_filter_select_component: true,
		feature_subteams: false,
		feature_subteams_hard_delete: false,
		feature_less_login_data: true,
		feature_no_unread_counts: true,
		feature_web_cache_users: false,
		feature_fast_space_previews: false,
		feature_js_raf_queue: false,
		feature_downloads_enhancements: true,
		feature_marketing_video_getting_started: false,
		feature_getvisibletopbanners_performance: false,
		feature_simple_file_events: false,
		feature_channel_page_perf: false,

		img: {
			app_icon: 'https://slack.global.ssl.fastly.net/272a/img/slack_growl_icon.png'
		},
		page_needs_custom_emoji: false
	};



	// client boot data
			boot_data.login_data = {"ok":true,"self":{"id":"U0ASB8NTH","name":"abhishm","prefs":{"highlight_words":"","user_colors":"","color_names_in_list":true,"growls_enabled":true,"tz":"America\/Los_Angeles","push_dm_alert":true,"push_mention_alert":true,"push_everything":false,"push_idle_wait":2,"push_sound":"b2.mp3","push_loud_channels":"","push_mention_channels":"","push_loud_channels_set":"","email_alerts":"none","email_alerts_sleep_until":0,"email_misc":true,"email_weekly":true,"welcome_message_hidden":false,"all_channels_loud":false,"loud_channels":"","never_channels":"","loud_channels_set":"","show_member_presence":true,"search_sort":"timestamp","expand_inline_imgs":true,"expand_internal_inline_imgs":true,"expand_snippets":false,"posts_formatting_guide":true,"seen_welcome_2":true,"seen_ssb_prompt":false,"seen_spaces_new_xp_tooltip":false,"spaces_new_xp_banner_dismissed":false,"search_only_my_channels":false,"emoji_mode":"default","emoji_use":"{}","has_invited":false,"has_uploaded":true,"has_created_channel":false,"search_exclude_channels":"","messages_theme":"default","webapp_spellcheck":true,"no_joined_overlays":false,"no_created_overlays":false,"dropbox_enabled":false,"seen_domain_invite_reminder":false,"seen_member_invite_reminder":false,"mute_sounds":false,"arrow_history":false,"tab_ui_return_selects":true,"obey_inline_img_limit":true,"new_msg_snd":"knock_brush.mp3","collapsible":false,"collapsible_by_click":true,"require_at":true,"ssb_space_window":"","mac_ssb_bounce":"","mac_ssb_bullet":true,"expand_non_media_attachments":true,"show_typing":true,"pagekeys_handled":true,"last_snippet_type":"","display_real_names_override":0,"time24":false,"enter_is_special_in_tbt":false,"graphic_emoticons":false,"convert_emoticons":true,"autoplay_chat_sounds":true,"ss_emojis":true,"sidebar_behavior":"","seen_onboarding_start":false,"onboarding_cancelled":false,"seen_onboarding_slackbot_conversation":false,"seen_onboarding_channels":false,"seen_onboarding_direct_messages":false,"seen_onboarding_invites":false,"seen_onboarding_search":false,"seen_onboarding_recent_mentions":false,"seen_onboarding_starred_items":false,"seen_onboarding_private_groups":false,"onboarding_slackbot_conversation_step":0,"mark_msgs_read_immediately":true,"start_scroll_at_oldest":true,"snippet_editor_wrap_long_lines":false,"ls_disabled":false,"sidebar_theme":"default","sidebar_theme_custom_values":"","f_key_search":false,"k_key_omnibox":true,"speak_growls":false,"mac_speak_voice":"com.apple.speech.synthesis.voice.Alex","mac_speak_speed":250,"comma_key_prefs":false,"at_channel_suppressed_channels":"","push_at_channel_suppressed_channels":"","prompted_for_email_disabling":false,"full_text_extracts":false,"no_text_in_notifications":false,"muted_channels":"","no_macssb1_banner":false,"no_winssb1_banner":false,"no_omnibox_in_channels":false,"k_key_omnibox_auto_hide_count":0,"hide_user_group_info_pane":false,"mentions_exclude_at_user_groups":false,"privacy_policy_seen":true,"search_exclude_bots":false,"fuzzy_matching":false,"load_lato_2":false,"fuller_timestamps":false,"last_seen_at_channel_warning":0,"flex_resize_window":false,"msg_preview":false,"msg_preview_displaces":true,"msg_preview_persistent":true,"emoji_autocomplete_big":false,"winssb_run_from_tray":true,"winssb_window_flash_behavior":"idle","two_factor_auth_enabled":false,"two_factor_type":null,"mentions_exclude_at_channels":true,"confirm_clear_all_unreads":true,"confirm_user_marked_away":true,"box_enabled":false,"seen_single_emoji_msg":false,"confirm_sh_call_start":true},"created":1442505520},"team":{"id":"T09FE4CN5","name":"Hack The Weather SF","email_domain":"","domain":"hacktheweather-sf","msg_edit_window_mins":-1,"prefs":{"default_channels":["C0AKRK9U6","C09FDPEH1","C0AKPA5PW","C09FDQ6P6","C0AKS1M1T"],"display_real_names":true,"posts_migrating":0,"who_can_at_everyone":"admin","who_can_at_channel":"ra","who_can_post_general":"admin","warn_before_at_channel":"always","msg_edit_window_mins":-1,"allow_message_deletion":true,"hide_referers":true,"who_can_create_channels":"regular","who_can_archive_channels":"regular","who_can_create_groups":"ra","who_can_kick_channels":"admin","who_can_kick_groups":"regular","who_can_create_delete_user_groups":"admin","who_can_edit_user_groups":"admin","retention_type":0,"retention_duration":0,"group_retention_type":0,"group_retention_duration":0,"dm_retention_type":0,"dm_retention_duration":0,"file_retention_type":0,"file_retention_duration":0,"require_at_for_mention":0,"compliance_export_start":0,"auth_mode":"normal"},"icon":{"image_34":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_34.jpg","image_44":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_44.jpg","image_68":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_68.jpg","image_88":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_88.jpg","image_102":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_102.jpg","image_132":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_132.jpg","image_original":"https:\/\/s3-us-west-2.amazonaws.com\/slack-files2\/avatars\/2015-08-22\/9523962722_0f27153547609d85f8c8_original.jpg"},"over_storage_limit":false,"plan":"","profile":[],"over_integrations_limit":true},"latest_event_ts":"1442780918.000000","channels":[{"id":"C0AKRK9U6","name":"dswb","is_channel":true,"created":1442242309,"creator":"U09FDQ6MA","is_archived":false,"is_general":false,"has_pins":false,"is_member":true,"members":["U09FDQ6MA","U09G06UKF","U09GUKYHL","U09K5K32M","U09M8MQ4X","U09RC6276","U0AKQ1KB5","U0AKR3QUD","U0AKW999R","U0AL1J908","U0AL4T0QK","U0AL5K3SB","U0ALAJ6NR","U0ALBLEAX","U0ALCAL79","U0ALG4HLM","U0ALJDFMJ","U0AM0CMSR","U0ANSL94Z","U0AP2C29Z","U0AQ6M3SQ","U0AQN23FZ","U0ARBRTHB","U0ASB8NTH","U0ASHGK09","U0ASY5H7T","U0ASYCCL8","U0AT69GTB","U0AT77Z5H","U0ATA0RNZ","U0ATCRVJP","U0AUJ31U3","U0AUJEM6G","U0AUN7ANL","U0AV2PKD3","U0AV66X7T","U0AV9BFDL","U0AVBJ0EB","U0B05ETB8","U0B0BQ230"],"topic":{"value":"","creator":"","last_set":0},"purpose":{"value":"","creator":"","last_set":0}},{"id":"C09FDPEH1","name":"general","is_channel":true,"created":1440275745,"creator":"U09FDQ6MA","is_archived":false,"is_general":true,"has_pins":false,"is_member":true,"members":["U09FDQ6MA","U09G06UKF","U09GUKYHL","U09K5K32M","U09M8MQ4X","U09RC6276","U0AKQ1KB5","U0AKR3QUD","U0AKW999R","U0AL1J908","U0AL4T0QK","U0AL5K3SB","U0ALAJ6NR","U0ALBLEAX","U0ALCAL79","U0ALG4HLM","U0ALJDFMJ","U0AM0CMSR","U0ANSL94Z","U0AP2C29Z","U0AQ6M3SQ","U0AQN23FZ","U0ARBRTHB","U0ASB8NTH","U0ASHGK09","U0ASY5H7T","U0ASYCCL8","U0AT69GTB","U0AT77Z5H","U0ATA0RNZ","U0ATCRVJP","U0AUJ31U3","U0AUJEM6G","U0AUN7ANL","U0AV2PKD3","U0AV66X7T","U0AV9BFDL","U0AVBJ0EB","U0B05ETB8","U0B0BQ230"],"topic":{"value":"Company-wide announcements and work-based matters","creator":"","last_set":0},"purpose":{"value":"This channel is for team-wide communication and announcements. All team members are in this channel.","creator":"","last_set":0}},{"id":"C0AKPA5PW","name":"python","is_channel":true,"created":1442242316,"creator":"U09FDQ6MA","is_archived":false,"is_general":false,"has_pins":false,"is_member":true,"members":["U09FDQ6MA","U09G06UKF","U09M8MQ4X","U0ALBLEAX","U0AP2C29Z","U0AQN23FZ","U0ARBRTHB","U0ASB8NTH","U0ASHGK09","U0ASY5H7T","U0AT69GTB","U0AT77Z5H","U0ATA0RNZ","U0ATCRVJP","U0AUJEM6G","U0AUN7ANL","U0AVBJ0EB","U0B05ETB8","U0B0BQ230"],"topic":{"value":"","creator":"","last_set":0},"purpose":{"value":"","creator":"","last_set":0}},{"id":"C09FDQ6P6","name":"random","is_channel":true,"created":1440275745,"creator":"U09FDQ6MA","is_archived":false,"is_general":false,"has_pins":true,"is_member":true,"members":["U09FDQ6MA","U09G06UKF","U09GUKYHL","U09K5K32M","U09M8MQ4X","U09RC6276","U0AKQ1KB5","U0AKR3QUD","U0AKW999R","U0AL1J908","U0AL4T0QK","U0AL5K3SB","U0ALAJ6NR","U0ALBLEAX","U0ALCAL79","U0ALG4HLM","U0ALJDFMJ","U0AM0CMSR","U0ANSL94Z","U0AP2C29Z","U0AQ6M3SQ","U0AQN23FZ","U0ARBRTHB","U0ASB8NTH","U0ASHGK09","U0ASY5H7T","U0ASYCCL8","U0AT69GTB","U0AT77Z5H","U0ATA0RNZ","U0ATCRVJP","U0AUJ31U3","U0AUJEM6G","U0AUN7ANL","U0AV2PKD3","U0AV9BFDL","U0AVBJ0EB","U0B05ETB8","U0B0BQ230"],"topic":{"value":"Non-work banter and water cooler conversation","creator":"","last_set":0},"purpose":{"value":"A place for non-work-related flimflam, faffing, hodge-podge or jibber-jabber you'd prefer to keep out of more focused work-related channels.","creator":"","last_set":0}},{"id":"C0AKS1M1T","name":"spark","is_channel":true,"created":1442242319,"creator":"U09FDQ6MA","is_archived":false,"is_general":false,"has_pins":false,"is_member":true,"members":["U09FDQ6MA","U09G06UKF","U09M8MQ4X","U0ALBLEAX","U0AP2C29Z","U0AQN23FZ","U0ARBRTHB","U0ASB8NTH","U0ASHGK09","U0ASY5H7T","U0AT69GTB","U0AT77Z5H","U0ATA0RNZ","U0ATCRVJP","U0AUJEM6G","U0AUN7ANL","U0AVBJ0EB","U0B05ETB8","U0B0BQ230"],"topic":{"value":"","creator":"","last_set":0},"purpose":{"value":"","creator":"","last_set":0}}],"groups":[{"id":"G0AVAT71C","name":"smarterdata","is_group":true,"created":1442629198,"creator":"U0ALAJ6NR","is_archived":false,"has_pins":false,"members":["U0AKR3QUD","U0ALAJ6NR","U0ASB8NTH"],"topic":{"value":"","creator":"","last_set":0},"purpose":{"value":"","creator":"","last_set":0},"is_open":true}],"ims":[{"id":"D0ASFJ5J6","is_im":true,"user":"USLACKBOT","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASFJAAD","is_im":true,"user":"U09FDQ6MA","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASFJABB","is_im":true,"user":"U09GUKYHL","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASFJAC9","is_im":true,"user":"U09K5K32M","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0AS8LZTN","is_im":true,"user":"U09M8MQ4X","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASBC4LD","is_im":true,"user":"U0AKR3QUD","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASBC4LV","is_im":true,"user":"U0AL5K3SB","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASCHFA4","is_im":true,"user":"U0ALAJ6NR","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0AS8L0TD","is_im":true,"user":"U0ALG4HLM","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASFJACR","is_im":true,"user":"U0AQ6M3SQ","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0AS8M02G","is_im":true,"user":"U0ARBRTHB","created":1442505520,"has_pins":false,"is_user_deleted":false},{"id":"D0ASY5HDF","is_im":true,"user":"U0ASY5H7T","created":1442519209,"has_pins":false,"is_user_deleted":false},{"id":"D0ASUGDV2","is_im":true,"user":"U0ASYCCL8","created":1442522084,"has_pins":false,"is_user_deleted":false},{"id":"D0ASZDKPE","is_im":true,"user":"U0AT69GTB","created":1442526813,"has_pins":false,"is_user_deleted":false},{"id":"D0ATCT8S0","is_im":true,"user":"U0ATCRVJP","created":1442546829,"has_pins":false,"is_user_deleted":false},{"id":"D0AUQUXUH","is_im":true,"user":"U0AUJ31U3","created":1442596500,"has_pins":false,"is_user_deleted":false},{"id":"D0B0MJV63","is_im":true,"user":"U0AUN7ANL","created":1442720205,"has_pins":false,"is_user_deleted":false},{"id":"D0AV03Y9J","is_im":true,"user":"U0AV2PKD3","created":1442612082,"has_pins":false,"is_user_deleted":false},{"id":"D0B10MCFR","is_im":true,"user":"U0AV66X7T","created":1442772725,"has_pins":false,"is_user_deleted":false},{"id":"D0B0C990C","is_im":true,"user":"U0B0BQ230","created":1442693327,"has_pins":false,"is_user_deleted":false}],"cache_ts":1442781518,"users":[{"id":"U0AUJEM6G","name":"abaronia","deleted":false,"status":null,"color":"de5f24","real_name":"anurag baronia","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"anurag","last_name":"baronia","real_name":"anurag baronia","real_name_normalized":"anurag baronia","email":"abaroni1@binghamton.edu","image_24":"https:\/\/secure.gravatar.com\/avatar\/6aa9da9ca7ce5d8438a3a190dd8da90a.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/6aa9da9ca7ce5d8438a3a190dd8da90a.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/6aa9da9ca7ce5d8438a3a190dd8da90a.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/6aa9da9ca7ce5d8438a3a190dd8da90a.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/6aa9da9ca7ce5d8438a3a190dd8da90a.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ASB8NTH","name":"abhishm","deleted":false,"status":null,"color":"a63024","real_name":"Abhishek Mishra","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Abhishek","last_name":"Mishra","real_name":"Abhishek Mishra","real_name_normalized":"Abhishek Mishra","email":"wiseemperor.abhis@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/fb97783cabc03655679531845aa33aed.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/fb97783cabc03655679531845aa33aed.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/fb97783cabc03655679531845aa33aed.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/fb97783cabc03655679531845aa33aed.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/fb97783cabc03655679531845aa33aed.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ALJDFMJ","name":"amargondaliya","deleted":false,"status":null,"color":"5a4592","real_name":"Amardas Gondaliya","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Amardas","last_name":"Gondaliya","real_name":"Amardas Gondaliya","real_name_normalized":"Amardas Gondaliya","email":"amar.hgce@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/d67d5c2f67d3a6124af4cc2b0f599bb3.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0001-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/d67d5c2f67d3a6124af4cc2b0f599bb3.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0001-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/d67d5c2f67d3a6124af4cc2b0f599bb3.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0001-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/d67d5c2f67d3a6124af4cc2b0f599bb3.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0001-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/d67d5c2f67d3a6124af4cc2b0f599bb3.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0001.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AM0CMSR","name":"angelcymak","deleted":false,"status":null,"color":"db3150","real_name":"Angel Mak","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Angel","last_name":"Mak","real_name":"Angel Mak","real_name_normalized":"Angel Mak","email":"angelcymak@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/a54b445a7c1724cef0ad1f1677c31dd8.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/a54b445a7c1724cef0ad1f1677c31dd8.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/a54b445a7c1724cef0ad1f1677c31dd8.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/a54b445a7c1724cef0ad1f1677c31dd8.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/a54b445a7c1724cef0ad1f1677c31dd8.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0015.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ALAJ6NR","name":"arsiatakeh","deleted":false,"status":null,"color":"4cc091","real_name":"Arsia Takeh","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Arsia","last_name":"Takeh","real_name":"Arsia Takeh","real_name_normalized":"Arsia Takeh","email":"arsia@smarterdatascience.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/6bef3c4f7ca71cb5f195b0d8caa1e911.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/6bef3c4f7ca71cb5f195b0d8caa1e911.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/6bef3c4f7ca71cb5f195b0d8caa1e911.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/6bef3c4f7ca71cb5f195b0d8caa1e911.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/6bef3c4f7ca71cb5f195b0d8caa1e911.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ASHGK09","name":"brookelawrie","deleted":false,"status":null,"color":"5870dd","real_name":"Brooke Lawrie","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Brooke","last_name":"Lawrie","real_name":"Brooke Lawrie","real_name_normalized":"Brooke Lawrie","email":"blawrie@us.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/6b62e68278cfe40391db00be412f2972.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/6b62e68278cfe40391db00be412f2972.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/6b62e68278cfe40391db00be412f2972.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/6b62e68278cfe40391db00be412f2972.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/6b62e68278cfe40391db00be412f2972.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AT77Z5H","name":"cfregly","deleted":false,"status":null,"color":"43761b","real_name":"Chris Fregly","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Chris","last_name":"Fregly","real_name":"Chris Fregly","real_name_normalized":"Chris Fregly","email":"chris@fregly.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/ebb206e482d83a34cc9f5b136182fb88.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0026-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/ebb206e482d83a34cc9f5b136182fb88.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0026-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/ebb206e482d83a34cc9f5b136182fb88.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F272a%2Fimg%2Favatars%2Fava_0026-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/ebb206e482d83a34cc9f5b136182fb88.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0026-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/ebb206e482d83a34cc9f5b136182fb88.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F272a%2Fimg%2Favatars%2Fava_0026.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ATA0RNZ","name":"charles2588","deleted":false,"status":null,"color":"d1707d","real_name":"charles gomes","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"charles","last_name":"gomes","real_name":"charles gomes","real_name_normalized":"charles gomes","email":"charles2588@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/dce675212b7582dcc02d0a324fc46c1c.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0023-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/dce675212b7582dcc02d0a324fc46c1c.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0023-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/dce675212b7582dcc02d0a324fc46c1c.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0023-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/dce675212b7582dcc02d0a324fc46c1c.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0023-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/dce675212b7582dcc02d0a324fc46c1c.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0023.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AL1J908","name":"ddao","deleted":false,"status":null,"color":"2b6836","real_name":"Dai Dao","tz":"America\/Denver","tz_label":"Mountain Daylight Time","tz_offset":-21600,"profile":{"first_name":"Dai","last_name":"Dao","real_name":"Dai Dao","real_name_normalized":"Dai Dao","email":"dai.dao@hotmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/01395e22ef63a62ff0cc494633788a2a.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/01395e22ef63a62ff0cc494633788a2a.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/01395e22ef63a62ff0cc494633788a2a.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/01395e22ef63a62ff0cc494633788a2a.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/01395e22ef63a62ff0cc494633788a2a.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0008.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ANSL94Z","name":"fourstix","deleted":false,"status":null,"color":"235e5b","real_name":"Gaston Williams","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Gaston","last_name":"Williams","real_name":"Gaston Williams","real_name_normalized":"Gaston Williams","email":"fourstix@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/74723788ab03e08d1c39a04729fd0687.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/74723788ab03e08d1c39a04729fd0687.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/74723788ab03e08d1c39a04729fd0687.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0021-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/74723788ab03e08d1c39a04729fd0687.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/74723788ab03e08d1c39a04729fd0687.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0B05ETB8","name":"gkovaig","deleted":false,"status":null,"color":"84b22f","real_name":"Raj Manickam","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Raj","last_name":"Manickam","real_name":"Raj Manickam","real_name_normalized":"Raj Manickam","email":"gkovaig@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/e4ec630f5b1963de22bb7d546cde566b.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/e4ec630f5b1963de22bb7d546cde566b.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/e4ec630f5b1963de22bb7d546cde566b.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0021-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/e4ec630f5b1963de22bb7d546cde566b.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/e4ec630f5b1963de22bb7d546cde566b.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0021.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AVBJ0EB","name":"hackweather","deleted":false,"status":null,"color":"8d4b84","real_name":"","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"real_name":"","real_name_normalized":"","email":"magacen21@yahoo.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/22f2617e9fedb0e9494d63e2ef8510c5.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0019-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/22f2617e9fedb0e9494d63e2ef8510c5.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0019-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/22f2617e9fedb0e9494d63e2ef8510c5.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0019-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/22f2617e9fedb0e9494d63e2ef8510c5.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0019-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/22f2617e9fedb0e9494d63e2ef8510c5.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0019.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AKW999R","name":"hpandey","deleted":false,"status":null,"color":"5b89d5","real_name":"Himanshu Pandey","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Himanshu","last_name":"Pandey","title":"Java Developer","skype":"","phone":"4086448765","real_name":"Himanshu Pandey","real_name_normalized":"Himanshu Pandey","email":"himanshu.pandey12@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/91ea012f3ea6fcd9fa9c26b06a2c8d32.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/91ea012f3ea6fcd9fa9c26b06a2c8d32.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/91ea012f3ea6fcd9fa9c26b06a2c8d32.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/91ea012f3ea6fcd9fa9c26b06a2c8d32.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/91ea012f3ea6fcd9fa9c26b06a2c8d32.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AT69GTB","name":"jeromechenette","deleted":false,"status":null,"color":"d55aef","real_name":"Jerome Chenette","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Jerome","last_name":"Chenette","real_name":"Jerome Chenette","real_name_normalized":"Jerome Chenette","email":"jerome.chenette@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/ff56b05d9ee00f9179232064df4c168c.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/ff56b05d9ee00f9179232064df4c168c.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/ff56b05d9ee00f9179232064df4c168c.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/ff56b05d9ee00f9179232064df4c168c.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/ff56b05d9ee00f9179232064df4c168c.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ARBRTHB","name":"joshmalina","deleted":false,"status":null,"color":"385a86","real_name":"joshua malina","tz":"America\/Chicago","tz_label":"Central Daylight Time","tz_offset":-18000,"profile":{"first_name":"joshua","last_name":"malina","real_name":"joshua malina","real_name_normalized":"joshua malina","email":"joshuamalina@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/e3bd1e187a8511c0fb7863679dd4d7a4.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/e3bd1e187a8511c0fb7863679dd4d7a4.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/e3bd1e187a8511c0fb7863679dd4d7a4.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/e3bd1e187a8511c0fb7863679dd4d7a4.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0008-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/e3bd1e187a8511c0fb7863679dd4d7a4.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0008.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ALG4HLM","name":"kaushikanu","deleted":false,"status":null,"color":"bb86b7","real_name":"Anurag Kaushik","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Anurag","last_name":"Kaushik","real_name":"Anurag Kaushik","real_name_normalized":"Anurag Kaushik","email":"kaushikanu@hotmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/61de848c643fc875877a546ef95ae2cc.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0017-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/61de848c643fc875877a546ef95ae2cc.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0017-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/61de848c643fc875877a546ef95ae2cc.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0017-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/61de848c643fc875877a546ef95ae2cc.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0017-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/61de848c643fc875877a546ef95ae2cc.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0017.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AQ6M3SQ","name":"kv.karumanchi","deleted":false,"status":null,"color":"53b759","real_name":"KV K","tz":"Asia\/Muscat","tz_label":"Gulf Standard Time","tz_offset":14400,"profile":{"first_name":"KV","last_name":"K","real_name":"KV K","real_name_normalized":"KV K","email":"karumanchi@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/b5ba67e4a9e801a550ba7bdfe3e5c323.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/b5ba67e4a9e801a550ba7bdfe3e5c323.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/b5ba67e4a9e801a550ba7bdfe3e5c323.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/b5ba67e4a9e801a550ba7bdfe3e5c323.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/b5ba67e4a9e801a550ba7bdfe3e5c323.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ASYCCL8","name":"lalin","deleted":false,"status":null,"color":"50a0cf","real_name":"Lalin","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Lalin","last_name":"","phone":"408-781-2656","title":"Signal Processing guy","image_24":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_24.jpg","image_32":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_32.jpg","image_48":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_48.jpg","image_72":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_72.jpg","image_192":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_192.jpg","image_512":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_512.jpg","image_1024":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_512.jpg","image_original":"https:\/\/avatars.slack-edge.com\/2015-09-17\/10913012980_b375533e1e3e413cdffc_original.jpg","skype":"skype-lt-cuper","real_name":"Lalin","real_name_normalized":"Lalin","email":"lalin.theverapperuma@gmail.com"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AUN7ANL","name":"lfarah","deleted":false,"status":null,"color":"902d59","real_name":"Lucas Farah","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Lucas","last_name":"Farah","title":"iOS and watchOS developer","skype":"farah.farah.7","phone":"(510)736-8436","image_24":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_24.jpg","image_32":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_32.jpg","image_48":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_48.jpg","image_72":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_72.jpg","image_192":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_192.jpg","image_512":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_512.jpg","image_1024":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_512.jpg","image_original":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10994283863_7930e99ee3389052ac65_original.jpg","real_name":"Lucas Farah","real_name_normalized":"Lucas Farah","email":"lucas.farah@me.com"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09GUKYHL","name":"luiz.aoqui","deleted":false,"status":null,"color":"e7392d","real_name":"Luiz Aoqui","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Luiz","last_name":"Aoqui","real_name":"Luiz Aoqui","real_name_normalized":"Luiz Aoqui","email":"laoqui@br.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/fdde2a05b3c2f686f5dd0b1b7bd3b881.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/fdde2a05b3c2f686f5dd0b1b7bd3b881.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/fdde2a05b3c2f686f5dd0b1b7bd3b881.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/fdde2a05b3c2f686f5dd0b1b7bd3b881.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/fdde2a05b3c2f686f5dd0b1b7bd3b881.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007.png"},"is_admin":true,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ALBLEAX","name":"mansweet","deleted":false,"status":null,"color":"d58247","real_name":"Michael mansour","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Michael","last_name":"mansour","real_name":"Michael mansour","real_name_normalized":"Michael mansour","email":"mnmansour91@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/aec282d51ec9c607a55c77c406034950.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0012-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/aec282d51ec9c607a55c77c406034950.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0012-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/aec282d51ec9c607a55c77c406034950.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0012-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/aec282d51ec9c607a55c77c406034950.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0012-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/aec282d51ec9c607a55c77c406034950.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0012.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0B0BQ230","name":"matthewporcelli","deleted":false,"status":null,"color":"4ec0d6","real_name":"Matthew Porcelli","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Matthew","last_name":"Porcelli","real_name":"Matthew Porcelli","real_name_normalized":"Matthew Porcelli","email":"matthew.porcelli@weather.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/f9781c470e96ce8431a696ebc974e838.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/f9781c470e96ce8431a696ebc974e838.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/f9781c470e96ce8431a696ebc974e838.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/f9781c470e96ce8431a696ebc974e838.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/f9781c470e96ce8431a696ebc974e838.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0002.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AV2PKD3","name":"michellepcwen","deleted":false,"status":null,"color":"827327","real_name":"Michelle Wen","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Michelle","last_name":"Wen","real_name":"Michelle Wen","real_name_normalized":"Michelle Wen","email":"michellepcwen@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/36ad9ff1cb3271e2fe12e7bb8711b635.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0004-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/36ad9ff1cb3271e2fe12e7bb8711b635.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0004-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/36ad9ff1cb3271e2fe12e7bb8711b635.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0004-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/36ad9ff1cb3271e2fe12e7bb8711b635.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0004-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/36ad9ff1cb3271e2fe12e7bb8711b635.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0004.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AQN23FZ","name":"moloneymb","deleted":false,"status":null,"color":"c386df","real_name":"Matthew Moloney","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Matthew","last_name":"Moloney","real_name":"Matthew Moloney","real_name_normalized":"Matthew Moloney","email":"moloneymb2@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/8274d8315ca8490d9c0b381310beb91d.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/8274d8315ca8490d9c0b381310beb91d.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/8274d8315ca8490d9c0b381310beb91d.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/8274d8315ca8490d9c0b381310beb91d.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/8274d8315ca8490d9c0b381310beb91d.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0020.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09M8MQ4X","name":"monicafox","deleted":false,"status":null,"color":"674b1b","real_name":"Monica Fox","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Monica","last_name":"Fox","real_name":"Monica Fox","real_name_normalized":"Monica Fox","email":"mlfox@us.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/1d639767d41e5f2a8c83718438f26b43.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/1d639767d41e5f2a8c83718438f26b43.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/1d639767d41e5f2a8c83718438f26b43.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/1d639767d41e5f2a8c83718438f26b43.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/1d639767d41e5f2a8c83718438f26b43.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014.png"},"is_admin":true,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09RC6276","name":"nancyb","deleted":false,"status":null,"color":"e96699","real_name":"Nancy Berlin","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Nancy","last_name":"Berlin","real_name":"Nancy Berlin","real_name_normalized":"Nancy Berlin","email":"nberlin@us.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/ebe64aed22c1e1360fa20f627d17b7c7.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0018-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/ebe64aed22c1e1360fa20f627d17b7c7.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0018-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/ebe64aed22c1e1360fa20f627d17b7c7.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0018-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/ebe64aed22c1e1360fa20f627d17b7c7.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0018-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/ebe64aed22c1e1360fa20f627d17b7c7.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0018.png"},"is_admin":true,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ASY5H7T","name":"niravuchat","deleted":false,"status":null,"color":"ea2977","real_name":"Nirav Uchat","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Nirav","last_name":"Uchat","real_name":"Nirav Uchat","real_name_normalized":"Nirav Uchat","email":"nirav.uchat@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/5e17b1a88933da9c62388a693af4998b.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/5e17b1a88933da9c62388a693af4998b.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/5e17b1a88933da9c62388a693af4998b.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/5e17b1a88933da9c62388a693af4998b.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/5e17b1a88933da9c62388a693af4998b.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0020.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09G06UKF","name":"polong.lin","deleted":false,"status":null,"color":"4bbe2e","real_name":"Polong Lin","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Polong","last_name":"Lin","image_24":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_24.jpg","image_32":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_32.jpg","image_48":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_48.jpg","image_72":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_72.jpg","image_192":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_192.jpg","image_512":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_512.jpg","image_1024":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_1024.jpg","image_original":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10985874055_b046b153d16396928e1d_original.jpg","real_name":"Polong Lin","real_name_normalized":"Polong Lin","email":"polong@ca.ibm.com"},"is_admin":true,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AV9BFDL","name":"quacktau","deleted":false,"status":null,"color":"3c8c69","real_name":"Paula Alves","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Paula","last_name":"Alves","real_name":"Paula Alves","real_name_normalized":"Paula Alves","email":"prpca1999@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/ecd2ac5c7c85dc671e58dfbffd4ad2f7.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/ecd2ac5c7c85dc671e58dfbffd4ad2f7.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/ecd2ac5c7c85dc671e58dfbffd4ad2f7.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/ecd2ac5c7c85dc671e58dfbffd4ad2f7.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/ecd2ac5c7c85dc671e58dfbffd4ad2f7.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0014.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AKR3QUD","name":"ramhimmat","deleted":false,"status":null,"color":"e0a729","real_name":"Ram Himmatraopet","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Ram","last_name":"Himmatraopet","image_24":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_24.jpg","image_32":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_32.jpg","image_48":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_48.jpg","image_72":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_72.jpg","image_192":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_192.jpg","image_512":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_192.jpg","image_1024":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_192.jpg","image_original":"https:\/\/avatars.slack-edge.com\/2015-09-14\/10672115831_c03bd34163d7351c65d9_original.jpg","real_name":"Ram Himmatraopet","real_name_normalized":"Ram Himmatraopet","email":"ram@smarterdatascience.com"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AKQ1KB5","name":"ravahuja","deleted":false,"status":null,"color":"684b6c","real_name":"Rav Ahuja","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Rav","last_name":"Ahuja","real_name":"Rav Ahuja","real_name_normalized":"Rav Ahuja","email":"rsahuja@ca.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/bd9ad262ac87c2cf982785dac8528ca4.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0000-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/bd9ad262ac87c2cf982785dac8528ca4.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0000-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/bd9ad262ac87c2cf982785dac8528ca4.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0000-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/bd9ad262ac87c2cf982785dac8528ca4.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0000-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/bd9ad262ac87c2cf982785dac8528ca4.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0000.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AV66X7T","name":"rosie","deleted":false,"status":null,"color":"a2a5dc","real_name":"Rosie Jetson","tz":null,"tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"bot_id":"B0AV67HMY","image_24":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_24.jpg","image_32":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_32.jpg","image_48":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_48.jpg","image_72":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_72.jpg","image_192":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_192.jpg","image_512":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_192.jpg","image_1024":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_192.jpg","image_original":"https:\/\/avatars.slack-edge.com\/2015-09-18\/10992308802_bb9be7ef2abc0003d2f7_original.jpg","first_name":"Rosie","last_name":"Jetson","title":"Hi, I am Rosie and I am here to help you setup your team.","real_name":"Rosie Jetson","real_name_normalized":"Rosie Jetson"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":true},{"id":"U0ALCAL79","name":"rosstin","deleted":false,"status":null,"color":"9b3b45","real_name":"Rosstin Murphy","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Rosstin","last_name":"Murphy","real_name":"Rosstin Murphy","real_name_normalized":"Rosstin Murphy","email":"asterazul@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/908a15466439e9921647d72efcb873e1.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0013-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/908a15466439e9921647d72efcb873e1.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0013-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/908a15466439e9921647d72efcb873e1.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0013-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/908a15466439e9921647d72efcb873e1.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0013-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/908a15466439e9921647d72efcb873e1.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0013.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09K5K32M","name":"saeed","deleted":false,"status":null,"color":"3c989f","real_name":"Saeed Aghabozorgi","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Saeed","last_name":"Aghabozorgi","real_name":"Saeed Aghabozorgi","real_name_normalized":"Saeed Aghabozorgi","email":"saeed@ca.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/d601d1995817dd10d9968cb168ff3566.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/d601d1995817dd10d9968cb168ff3566.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/d601d1995817dd10d9968cb168ff3566.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/d601d1995817dd10d9968cb168ff3566.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/d601d1995817dd10d9968cb168ff3566.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0009.png"},"is_admin":true,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AP2C29Z","name":"stuart4wx","deleted":false,"status":null,"color":"9e3997","real_name":"Stuart Schmukler","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Stuart","last_name":"Schmukler","title":"Ex-WX student (Meteorology degree in a galaxy far, far away.)","skype":"sasconsul","phone":"650-218-8259","real_name":"Stuart Schmukler","real_name_normalized":"Stuart Schmukler","email":"sas1@alumni.uchicago.edu","image_24":"https:\/\/secure.gravatar.com\/avatar\/60cf63e7be30addf4da52d16da6b27a6.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/60cf63e7be30addf4da52d16da6b27a6.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/60cf63e7be30addf4da52d16da6b27a6.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/60cf63e7be30addf4da52d16da6b27a6.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0020-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/60cf63e7be30addf4da52d16da6b27a6.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0020.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AL5K3SB","name":"surya","deleted":false,"status":null,"color":"99a949","real_name":"Manu Suryavansh","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Manu","last_name":"Suryavansh","real_name":"Manu Suryavansh","real_name_normalized":"Manu Suryavansh","email":"suryavanshi.manu@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/9cf1898b538cc4e6a5100475877c16e0.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/9cf1898b538cc4e6a5100475877c16e0.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/9cf1898b538cc4e6a5100475877c16e0.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/9cf1898b538cc4e6a5100475877c16e0.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/9cf1898b538cc4e6a5100475877c16e0.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AUJ31U3","name":"vinayakagrawal88","deleted":false,"status":null,"color":"8f4a2b","real_name":"Vinayak Agrawal","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Vinayak","last_name":"Agrawal","real_name":"Vinayak Agrawal","real_name_normalized":"Vinayak Agrawal","email":"vinayakagrawal88@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/6dc187e1c9f213b3e47f1471785aa350.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/6dc187e1c9f213b3e47f1471785aa350.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/6dc187e1c9f213b3e47f1471785aa350.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/6dc187e1c9f213b3e47f1471785aa350.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/6dc187e1c9f213b3e47f1471785aa350.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0005.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0ATCRVJP","name":"vsubbiah","deleted":false,"status":null,"color":"e06b56","real_name":"Venkat Subbiah","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Venkat","last_name":"Subbiah","real_name":"Venkat Subbiah","real_name_normalized":"Venkat Subbiah","email":"v.subbiah@gmail.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/318d9eb2833a068c9e6239861e8bb6ca.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/318d9eb2833a068c9e6239861e8bb6ca.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/318d9eb2833a068c9e6239861e8bb6ca.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/318d9eb2833a068c9e6239861e8bb6ca.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0002-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/318d9eb2833a068c9e6239861e8bb6ca.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F3654%2Fimg%2Favatars%2Fava_0002.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U09FDQ6MA","name":"zambon","deleted":false,"status":null,"color":"9f69e7","real_name":"Henrique Zambon","tz":"America\/Indiana\/Indianapolis","tz_label":"Eastern Daylight Time","tz_offset":-14400,"profile":{"first_name":"Henrique","last_name":"Zambon","real_name":"Henrique Zambon","real_name_normalized":"Henrique Zambon","email":"henrique.zambon@ca.ibm.com","image_24":"https:\/\/secure.gravatar.com\/avatar\/2349f3a2db645b5f7d33c3542a2634ea.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/2349f3a2db645b5f7d33c3542a2634ea.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/2349f3a2db645b5f7d33c3542a2634ea.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/2349f3a2db645b5f7d33c3542a2634ea.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/2349f3a2db645b5f7d33c3542a2634ea.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0007.png"},"is_admin":true,"is_owner":true,"is_primary_owner":true,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"U0AL4T0QK","name":"zhuang","deleted":false,"status":null,"color":"df3dc0","real_name":"Zian Huang","tz":"America\/Los_Angeles","tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"Zian","last_name":"Huang","real_name":"Zian Huang","real_name_normalized":"Zian Huang","email":"zhuang@scu.edu","image_24":"https:\/\/secure.gravatar.com\/avatar\/a7b28c747d7fb44add844d7bebf82982.jpg?s=24&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-24.png","image_32":"https:\/\/secure.gravatar.com\/avatar\/a7b28c747d7fb44add844d7bebf82982.jpg?s=32&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-32.png","image_48":"https:\/\/secure.gravatar.com\/avatar\/a7b28c747d7fb44add844d7bebf82982.jpg?s=48&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-48.png","image_72":"https:\/\/secure.gravatar.com\/avatar\/a7b28c747d7fb44add844d7bebf82982.jpg?s=72&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025-72.png","image_192":"https:\/\/secure.gravatar.com\/avatar\/a7b28c747d7fb44add844d7bebf82982.jpg?s=192&d=https%3A%2F%2Fslack.global.ssl.fastly.net%2F66f9%2Fimg%2Favatars%2Fava_0025.png"},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false},{"id":"USLACKBOT","name":"slackbot","deleted":false,"status":null,"color":"757575","real_name":"slackbot","tz":null,"tz_label":"Pacific Daylight Time","tz_offset":-25200,"profile":{"first_name":"slackbot","last_name":"","image_24":"https:\/\/slack-assets2.s3-us-west-2.amazonaws.com\/10068\/img\/slackbot_24.png","image_32":"https:\/\/slack-assets2.s3-us-west-2.amazonaws.com\/10068\/img\/slackbot_32.png","image_48":"https:\/\/slack-assets2.s3-us-west-2.amazonaws.com\/10068\/img\/slackbot_48.png","image_72":"https:\/\/slack-assets2.s3-us-west-2.amazonaws.com\/10068\/img\/slackbot_72.png","image_192":"https:\/\/slack-assets2.s3-us-west-2.amazonaws.com\/10068\/img\/slackbot_192.png","real_name":"slackbot","real_name_normalized":"slackbot","email":""},"is_admin":false,"is_owner":false,"is_primary_owner":false,"is_restricted":false,"is_ultra_restricted":false,"is_bot":false}],"version_ts":1442762476,"min_version_ts":1442610871,"cache_version":"v10-dog","cache_ts_version":"v1-cat","bots":[{"id":"B09FDPEHZ","deleted":false,"name":"gdrive"},{"id":"B0AV67HMY","deleted":false,"name":"bot","icons":{"image_48":"https:\/\/slack.global.ssl.fastly.net\/93ed\/img\/services\/bots_48.png"}}]};
	
//-->
</script>			
	
					<!-- output_js "core" -->
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/0fed/js/libs/jquery.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/e23fc/js/rollup-core_required_libs.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/3757/js/rollup-core_required_ts.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/c07e/js/TS.web.js" crossorigin="anonymous"></script>

	<!-- output_js "core_web" -->
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/896b0/js/rollup-core_web.js" crossorigin="anonymous"></script>

	<!-- output_js "secondary" -->
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/e60b/js/rollup-secondary_a_required.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/87dd/js/rollup-secondary_b_required.js" crossorigin="anonymous"></script>

		<!-- output_js "regular" -->
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/f198/js/TS.web.comments.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/eb5b/js/TS.web.file.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/e26c/js/libs/codemirror.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/9e78/js/codemirror_load.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/d358/js/TS.inline_file_previews.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/33bd/js/TS.ui.filter_select.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="https://slack.global.ssl.fastly.net/8d65/js/TS.rxns.js" crossorigin="anonymous"></script>

		<script type="text/javascript">
	<!--
		boot_data.page_needs_custom_emoji = true;
		
		boot_data.file = {"id":"F0B12J5NJ","created":1442779127,"timestamp":1442779127,"name":"TwitterR.R","title":"TwitterR.R","mimetype":"text\/plain","filetype":"r","pretty_type":"R","user":"U0ALAJ6NR","editable":true,"size":1944,"mode":"snippet","is_external":false,"external_type":"","is_public":false,"public_url_shared":false,"display_as_bot":false,"username":"","url":"https:\/\/slack-files.com\/files-pub\/T09FE4CN5-F0B12J5NJ-c388b66df4\/twitterr.r","url_download":"https:\/\/slack-files.com\/files-pub\/T09FE4CN5-F0B12J5NJ-c388b66df4\/download\/twitterr.r","url_private":"https:\/\/files.slack.com\/files-pri\/T09FE4CN5-F0B12J5NJ\/twitterr.r","url_private_download":"https:\/\/files.slack.com\/files-pri\/T09FE4CN5-F0B12J5NJ\/download\/twitterr.r","permalink":"https:\/\/hacktheweather-sf.slack.com\/files\/arsiatakeh\/F0B12J5NJ\/twitterr.r","permalink_public":"https:\/\/slack-files.com\/T09FE4CN5-F0B12J5NJ-c388b66df4","edit_link":"https:\/\/hacktheweather-sf.slack.com\/files\/arsiatakeh\/F0B12J5NJ\/twitterr.r\/edit","preview":"library(ROAuth)\nlibrary(streamR)\n\n# Provide access tokens to the Twitter API\nrequestURL \u003C- \"https:\/\/api.twitter.com\/oauth\/request_token\"\naccessURL \u003C- \"https:\/\/api.twitter.com\/oauth\/access_token\"\nauthURL \u003C- \"http:\/\/api.twitter.com\/oauth\/authorize\"\nconsumerKey \u003C- \"0oGqj0yeQBSUFrtIx7JHPDtf6\"\nconsumerSecret \u003C- \"RKTtCk3QgA8V0Zm3VLC0D7VxNObniHt2djUfKv1qIo6XKS2eY2\"\nmy_oauth \u003C- OAuthFactory$new(consumerKey=consumerKey,","preview_highlight":"\u003Cdiv class=\"CodeMirror cm-s-default CodeMirrorServer\"\u003E\n\u003Cdiv class=\"CodeMirror-code\"\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003Elibrary\u003C\/span\u003E(\u003Cspan class=\"cm-variable\"\u003EROAuth\u003C\/span\u003E)\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003Elibrary\u003C\/span\u003E(\u003Cspan class=\"cm-variable\"\u003EstreamR\u003C\/span\u003E)\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E&#8203;\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-comment\"\u003E# Provide access tokens to the Twitter API\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003ErequestURL\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-string\"\u003E&quot;\u003C\/span\u003E\u003Cspan class=\"cm-string\"\u003Ehttps:\/\/api.twitter.com\/oauth\/request_token&quot;\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003EaccessURL\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-string\"\u003E&quot;\u003C\/span\u003E\u003Cspan class=\"cm-string\"\u003Ehttps:\/\/api.twitter.com\/oauth\/access_token&quot;\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003EauthURL\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-string\"\u003E&quot;\u003C\/span\u003E\u003Cspan class=\"cm-string\"\u003Ehttp:\/\/api.twitter.com\/oauth\/authorize&quot;\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003EconsumerKey\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-string\"\u003E&quot;\u003C\/span\u003E\u003Cspan class=\"cm-string\"\u003E0oGqj0yeQBSUFrtIx7JHPDtf6&quot;\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003EconsumerSecret\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-string\"\u003E&quot;\u003C\/span\u003E\u003Cspan class=\"cm-string\"\u003ERKTtCk3QgA8V0Zm3VLC0D7VxNObniHt2djUfKv1qIo6XKS2eY2&quot;\u003C\/span\u003E\u003C\/pre\u003E\u003C\/div\u003E\n\u003Cdiv\u003E\u003Cpre\u003E\u003Cspan class=\"cm-variable\"\u003Emy_oauth\u003C\/span\u003E \u003Cspan class=\"cm-arrow\"\u003E&lt;-\u003C\/span\u003E \u003Cspan class=\"cm-variable\"\u003EOAuthFactory\u003C\/span\u003E\u003Cspan class=\"cm-dollar\"\u003E$\u003C\/span\u003E\u003Cspan class=\"cm-variable\"\u003Enew\u003C\/span\u003E(\u003Cspan class=\"cm-variable\"\u003EconsumerKey\u003C\/span\u003E\u003Cspan class=\"cm-arg-is\"\u003E=\u003C\/span\u003E\u003Cspan class=\"cm-variable\"\u003EconsumerKey\u003C\/span\u003E,\u003C\/pre\u003E\u003C\/div\u003E\n\u003C\/div\u003E\n\u003C\/div\u003E\n","lines":10,"lines_more":14,"channels":[],"groups":[],"ims":["D0ASCHFA4"],"comments_count":0};
		boot_data.file.comments = [];

		

		var g_editor;

		$(function(){

			var wrap_long_lines = !!TS.model.code_wrap_long_lines;

			g_editor = CodeMirror(function(elt){
				var content = document.getElementById("file_contents");
				content.parentNode.replaceChild(elt, content);
			}, {
				value: $('#file_contents').text(),
				lineNumbers: true,
				matchBrackets: true,
				indentUnit: 4,
				indentWithTabs: true,
				enterMode: "keep",
				tabMode: "shift",
				viewportMargin: Infinity,
				readOnly: true,
				lineWrapping: wrap_long_lines
			});

			$('#file_preview_wrap_cb').bind('change', function(e) {
				TS.model.code_wrap_long_lines = $(this).prop('checked');
				g_editor.setOption('lineWrapping', TS.model.code_wrap_long_lines);
			})

			$('#file_preview_wrap_cb').prop('checked', wrap_long_lines);

			CodeMirror.switchSlackMode(g_editor, "r");
		});

		
		$('#file_comment').css('overflow', 'hidden').autogrow();
	//-->
	</script>

			<script type="text/javascript">TS.boot(boot_data);</script>
	<!-- slack-www324 / 2015-09-20 13:38:38 / vfca042f9e24d6f3b2862c530bfdeb537511b19cf -->
<style>.color_9f69e7:not(.nuc) {color:#9F69E7;}.color_4bbe2e:not(.nuc) {color:#4BBE2E;}.color_e7392d:not(.nuc) {color:#E7392D;}.color_3c989f:not(.nuc) {color:#3C989F;}.color_674b1b:not(.nuc) {color:#674B1B;}.color_e96699:not(.nuc) {color:#E96699;}.color_e0a729:not(.nuc) {color:#E0A729;}.color_684b6c:not(.nuc) {color:#684B6C;}.color_5b89d5:not(.nuc) {color:#5B89D5;}.color_2b6836:not(.nuc) {color:#2B6836;}.color_99a949:not(.nuc) {color:#99A949;}.color_df3dc0:not(.nuc) {color:#DF3DC0;}.color_4cc091:not(.nuc) {color:#4CC091;}.color_9b3b45:not(.nuc) {color:#9B3B45;}.color_d58247:not(.nuc) {color:#D58247;}.color_bb86b7:not(.nuc) {color:#BB86B7;}.color_5a4592:not(.nuc) {color:#5A4592;}.color_db3150:not(.nuc) {color:#DB3150;}.color_235e5b:not(.nuc) {color:#235E5B;}.color_9e3997:not(.nuc) {color:#9E3997;}.color_53b759:not(.nuc) {color:#53B759;}.color_c386df:not(.nuc) {color:#C386DF;}.color_385a86:not(.nuc) {color:#385A86;}.color_a63024:not(.nuc) {color:#A63024;}.color_5870dd:not(.nuc) {color:#5870DD;}.color_ea2977:not(.nuc) {color:#EA2977;}.color_50a0cf:not(.nuc) {color:#50A0CF;}.color_d55aef:not(.nuc) {color:#D55AEF;}.color_d1707d:not(.nuc) {color:#D1707D;}.color_43761b:not(.nuc) {color:#43761B;}.color_e06b56:not(.nuc) {color:#E06B56;}.color_8f4a2b:not(.nuc) {color:#8F4A2B;}.color_902d59:not(.nuc) {color:#902D59;}.color_de5f24:not(.nuc) {color:#DE5F24;}.color_a2a5dc:not(.nuc) {color:#A2A5DC;}.color_827327:not(.nuc) {color:#827327;}.color_3c8c69:not(.nuc) {color:#3C8C69;}.color_8d4b84:not(.nuc) {color:#8D4B84;}.color_84b22f:not(.nuc) {color:#84B22F;}.color_4ec0d6:not(.nuc) {color:#4EC0D6;}.color_e23f99:not(.nuc) {color:#E23F99;}.color_e475df:not(.nuc) {color:#E475DF;}.color_619a4f:not(.nuc) {color:#619A4F;}.color_a72f79:not(.nuc) {color:#A72F79;}.color_7d414c:not(.nuc) {color:#7D414C;}.color_aba727:not(.nuc) {color:#ABA727;}.color_965d1b:not(.nuc) {color:#965D1B;}.color_4d5e26:not(.nuc) {color:#4D5E26;}.color_dd8527:not(.nuc) {color:#DD8527;}.color_bd9336:not(.nuc) {color:#BD9336;}.color_e85d72:not(.nuc) {color:#E85D72;}.color_dc7dbb:not(.nuc) {color:#DC7DBB;}.color_bc3663:not(.nuc) {color:#BC3663;}.color_9d8eee:not(.nuc) {color:#9D8EEE;}.color_8469bc:not(.nuc) {color:#8469BC;}.color_73769d:not(.nuc) {color:#73769D;}.color_b14cbc:not(.nuc) {color:#B14CBC;}</style>
</body>
</html>