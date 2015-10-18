<div class="row">
    <h1>Article Listing</h1>
</div>
    <div class="row">
		
		<div class="col-md-7 col-lg-7">
			<ul class="media-list main-list">
              {articles_entries}
			  <li class="media">
			    <a class="pull-left" href="#">
			      <img class="media-object" src="{photo}" alt="...">
			    </a>
			    <div class="media-body">
			      <h4 class="media-heading">{title}</h4>
				  <h5>Posted at {posted_ts}<br>By {username}</h5>
                  {summary}
				  <br>
				  <p class="by-author"></p> 
				  <a href='/articles/view/{idarticle}'>View more</a>
			      
			    </div>
			  </li>
              {/articles_entries}
			</ul>
		</div>
        {featured_article}
</div>
	