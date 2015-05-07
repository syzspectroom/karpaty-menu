do ->
  # hamburger menu
  _menuToggler = '.js-menu-toggler'
  _mainMenu = '.js-main-menu'
  _menuBodyOverlay = '.js-menu-page-overlay'

  toggleMenu = (e) ->
    e.stopPropagation()
    e.preventDefault()
    $([_menuToggler, _mainMenu, _menuBodyOverlay].join(', ') ).toggleClass 'active'
    $('body').toggleClass 'overflow-hidden'
    $('.js-menu-category').removeClass 'opened'
    $('.js-menu-category.active').addClass 'opened'


  toggleCategory = (e) ->
    e.stopPropagation()
    e.preventDefault()
    isCurrentOpened = $(this).parent().hasClass 'opened'
    $('.js-menu-category').removeClass 'opened'
    if !isCurrentOpened
      $(this).parent().addClass 'opened'

  $(document).on 'click', [_menuToggler, _menuBodyOverlay].join(', '), toggleMenu
  $(document).on 'click', '.js-menu-category-name', toggleCategory


