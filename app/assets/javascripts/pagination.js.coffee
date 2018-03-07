jQuery ->
  if $('#infinite-scrolling').size() > 0
    $(window).on 'scroll', ->
      more_listings_url = $('.pagination .next_page a').attr('href')
      if more_listings_url && $(window).scrollTop() > $(document).height() - $(window).height() - 60
          $('.pagination').html('<img src="/images/ajax-loader.gif" alt="Loading..." title="Loading..." />')
          $.getScript more_listings_url
      return
    return