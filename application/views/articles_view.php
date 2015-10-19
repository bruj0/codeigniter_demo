<br><br>
<script type="text/javascript">
  $(document).ready(function() {
    $("#bookmarkme").click(function() {
		var ua = navigator.userAgent.toLowerCase(); 
		var str = ''; 
		var isWebkit = (ua.indexOf('webkit') != - 1); 
		var isMac = (ua.indexOf('mac') != - 1); 
		
		if (ua.indexOf('konqueror') != - 1) { 
			str = 'CTRL + B'; // Konqueror 
		} else if (window.home || isWebkit || isMac) { 
			str = (isMac ? 'Command/Cmd' : 'CTRL') + ' + D'; // Netscape, Safari, iCab
		} 
		 alert( ((str) ? 'Press ' + str + ' to bookmark this page.' : str));
	});
});
</script>
<div class="container">
  <div class="row">
      <div class="headline-card tracked loaded" style="height: 600px; width: 800px;">
        <span class="image-wrap">
			<span class="helper"></span>
            <img class="image image-small" src="{http_host}{photo}" />
        </span>
        <div class="news-source">
          <div class="source-section first-section">
            <a href="#">{email}</a>
          </div>
          <div class="source-section first-section first-lower-section subscribe">
            <button id="bookmarkme" type="button" class="btn btn-success btn-xs btn-subscribe"><i class="fa fa-newspaper-o fa-lg"></i> BOOKMARK </button>
            <span>222,980</span>
          </div>
          <div class="news-tags-reveal">
            <span>254 views</span>
          </div>
        </div>

        <div class="body">
          <h3>
            <a href="">{title}</a>
          </h3>
          <div class="news-info">
            <span class="time"><i class="fa fa-clock-o fa-1x"> Posted at <b>{posted_ts}</b></i></span>
            <span class="time"><i class="fa fa-user fa-1x"> by <b>{username}</b></i></span>
          </div>
        </div>

        <div class="text-preview">
          <p>
            <span>
				{summary}
				{text}
			</a>
          </p>
		  
        </div>
        <div class="news-actions" role="group" aria-label="">
          <a class="btn btn-link btn-xs btn-action" href="/articles/export/{idarticle}"><i class="fa fa-file-pdf-o fa-lg fa-2x"></i> Expor to PDF</a>
        </div>

      </div>
  </div>
</div>
</div>