<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
	
<!-- ==========================================================	-->
<!--	Created by Devit Schizoper                          	-->
<!--	Created HomePages http://LoadFoo.starzonewebhost.com   	-->
<!--	Created Day 01.12.2006                              	-->
<!-- ========================================================== -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
   <meta http-equiv="content-type" content="text/html;charset=utf-8" />
	<meta name="author" content="LoadFoO" />
	<meta name="description" content="Site description" />
	<meta name="keywords" content="key, words" />
	<title>Open Group Manager - <cfoutput>#rc.title#</cfoutput></title>
	<link rel="stylesheet" type="text/css" href="/css/style.css" media="screen" />
	<link rel="shortcut icon" href="/favicon.ico" />
	<script type="text/javascript" src="/js/textsizer.js"></script>
	<script type="text/javascript" src="/js/rel.js"></script>
</head>

<body>
<div id="wrap">
<div id="top">
<cfoutput>
<h2><a href="#buildURL('main.default')#" title="Back to main page">Open Group Manager</a></h2>
</cfoutput>
<cfinclude template="inc/topNav.cfm" />
</div>
<div id="content">
<div style="float: right;"><a href="javascript:ts('body',1)">[+]</a> | <a
href="javascript:ts('body',-1)">[-]</a></div>
<div id="left">
<cfoutput>#body#</cfoutput>	<!--- body is result of views --->
</div>
<div id="right">
<ul id="nav">
	<li><a href="#Home">Home</a></li>
	<li><a href="#Archive">Archive</a></li>
	<li><a href="#Link">Links</a></li>
	<li><a href="#download">Download</a></li>
	<li><a href="#support">Support</a></li>
	<li><a href="#contact">Contact</a></li>
</ul>
	<div class="box">
		<h2 style="margin-top:17px">Recent Entries</h2>
		<ul>
			<li><a href="#">Recent Entries1</a> <i>01 Des 06</i></li>
			<li><a href="#">Recent Entries2</a> <i>01 Des 06</i></li>
			<li><a href="#">Recent Entries3</a> <i>01 Des 06</i></li>
			<li><a href="#">Recent Entries4</a> <i>01 Des 06</i></li>
			<li><a href="#">Recent Entries5</a> <i>01 Des 06</i></li>
		</ul>
	</div>
</div>
<div id="clear"></div></div>
<div id="footer">
<p>Design by <a href="http://loadfoo.org/" rel="external">LoadFoO</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer" rel="external">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer" rel="external">XHTML</a></p>
</div>
</div>

</body>
</html>
