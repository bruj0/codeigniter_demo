$(document).ready(function(){
$('#js-upload-form').submit(function(){
    var input1 = $("<input>")
                   .attr("type", "hidden")
                   .attr("name", "article_title").val($('#article_title').val());
    var input2 = $("<input>")
                   .attr("type", "hidden")
                   .attr("name", "article_summary").val($('#article_summary').val());
    var input3 = $("<input>")
                   .attr("type", "hidden")
                   .attr("name", "article_content").val($('#article_content').val());
                   
    $('#js-upload-form').append($(input1));
    $('#js-upload-form').append($(input2));
    $('#js-upload-form').append($(input3));
    return true;
});

$('#form_article').submit(function(){
    $('#form_article').hide();
    
    var input1 = $("<input>")
                   .attr("type", "hidden")
                   .attr("name", "title").val($('#article_title').val());
    var input2 = $("<input>")
                   .attr("type", "text")
                   .attr("name", "summary").val($('#article_summary').val());
    var input3 = $("<input>")
                   .attr("type", "text")
                   .attr("name", "text").val($('#article_content').val());
    var input4 = $("<input>")
                   .attr("type", "hidden")
                   .attr("name", "photo").val($('#article_photo').val());
                   
    $('#form_article').append($(input1));
    $('#form_article').append($(input2));
    $('#form_article').append($(input3));
    $('#form_article').append($(input4));
    return true;
});
    
});
    /*$("#js-upload-form").submit(function(){
         e.preventDefault();
    });
    $("#js-upload-form").dropzone({
        url: "/articles/upload",
        method: 'POST',
        paramName: 'file',
        previewsContainer: '#preview_zone'
    });
    $("#js-upload-form").on("addedfile", function(file) {
        // Hookup the start button
        console.log('added'+file);
        $('#js-upload-submit').onclick = function() { $("js-upload-form").enqueueFile(file); };
      });
});    */
/*    
+ function($) {
    'use strict';

    // UPLOAD CLASS DEFINITION
    // ======================

    /*var dropZone = document.getElementById('drop-zone');
    var uploadForm = document.getElementById('js-upload-form');

    var startUpload = function(files) {
        console.log(files)
    }

    uploadForm.addEventListener('submit', function(e) {
        var uploadFiles = document.getElementById('js-upload-files').files;
        e.preventDefault()

        startUpload(uploadFiles)
    })

    dropZone.ondrop = function(e) {
        e.preventDefault();
        this.className = 'upload-drop-zone';

        startUpload(e.dataTransfer.files)
    }

    dropZone.ondragover = function() {
        this.className = 'upload-drop-zone drop';
        return false;
    }

    dropZone.ondragleave = function() {
        this.className = 'upload-drop-zone';
        return false;
    }
   
}(jQuery);*/