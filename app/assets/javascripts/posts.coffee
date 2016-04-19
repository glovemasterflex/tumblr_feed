$(document).ready ->
  baseUrl = 'https://api.tumblr.com/v2'
  user = 'GloveMasterFlex.tumblr.com'
  api_key = $('#get_posts').data('consumerKey')

  $('#get_posts').on 'click', ->
    $.ajax "#{baseUrl}/blog/#{user}/posts/",
    type: 'GET'
    dataType: 'jsonp'
    data:
      api_key: api_key
    success: (data) ->
      for post in data.response.posts
        $('.posts').append "<li><h2>#{post.title}</h2>#{post.body}</li>"
