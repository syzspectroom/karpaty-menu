do ->
  toggleMenu = ->
    $(document.body).toggleClass('show-menu')

  toggleMenuRow = (e) ->
    e.preventDefault()
    el = e.target
    isCurrentOpened = $(el.parentNode).hasClass('opened')

    $('.js-menu-category').removeClass('opened');

    if !isCurrentOpened
      $(el.parentNode).addClass('opened');


  isTitleVisible = true # no need to toch DOM very often
  scrollHandler = (e) ->
    scrollTop = window.pageYOffset || document.documentElement.scrollTop
    $el = $('.js-menu-title')

    if scrollTop <= 100 && !isTitleVisible
      isTitleVisible = true
      $el.removeClass('hidden')
    else if scrollTop > 100 && isTitleVisible
      isTitleVisible = false
      $el.addClass('hidden')


  $('.js-menu-button, .js-menu-overlay').on 'click', toggleMenu
  $('.js-menu-category-name').on 'click', toggleMenuRow
  $(document).on 'scroll', scrollHandler
