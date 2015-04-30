window.createApplication = function() {
  var $main = $('.main');
  $main.html(JST['app/templates/problems.us']());
  $main.on('click', 'button.new-problem', function() {
    $.get('/problem', function(problem) {
      $main.find('.latest-problem').text(problem.description);
    });
  });
};

$(function() {
  createApplication();
});
