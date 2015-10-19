<script src="/assets/js/dropzone.js"></script>
<script src="/assets/js/articles_new.js"></script>
<br><br>
    <div class="row">
        <div class="col-md-12">
            <div class="panel-group" id="accordion">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><span class="glyphicon glyphicon-file">
                            </span>POST NEW ARTICLE</a>
                        </h4>
                    </div>
                    <div id="collapseOne" class="panel-collapse collapse in">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <input name="article_title" id="article_title" type="text" class="form-control" placeholder="Title" value='{article_title}' required />
                                    </div>
                                    <div class="form-group">
                                        <textarea name="article_summary" id="article_summary" class="form-control" placeholder="Summary" rows="5" required>{article_summary}</textarea>
                                    </div>
                                    <div class="form-group">
                                        <textarea name="article_content" id="article_content" class="form-control" placeholder="Content" rows="5" required>{article_content}</textarea>
                                        <input type="hidden" name="photo" id="article_photo" value="{photo}">
                                    </div>                                    
                                </div>
                            </div>
                            <div class="panel panel-default">
                              <div class="panel-heading"><strong>Upload Image</strong></div>
                              <div class="panel-body">
                      
                                <!-- Standar Form -->
                                <h4>Select Image from your computer <small>{error}</small></h4>
                                <br>
                                <form action="/articles/upload" method="post" enctype="multipart/form-data" name="js-upload-form" id="js-upload-form" >
                                  <div class="form">
                                    <div class="form-group">
                                      <input type="file" name="file" id="js-upload-files">
                                    </div>
                                    <button type="submit" class="btn btn-sm btn-primary start" id="js-upload-submit">Upload image</button>
                                  </div>
                                
                                <br>
                                <!-- Upload Finished -->
                                <div class="js-upload-finished">
                                  <h3>Processed Image</h3>
                                  <div class="list-group" >
                                    {photo_img}
                                  </div>
                                </div>
                                </form>
                              </div>
                            </div>
                           <br>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="well well-sm well-primary">
                                        <form method="post" action="/articles/new" class="form form-inline" id="form_article" role="form">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-success btn-sm">
                                                <span class="glyphicon glyphicon-floppy-disk"></span>Publish Article</button>
                                        </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
