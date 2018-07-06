$(document).ready(function () {
  var sideBarState = localStorage.getItem('SideBarMenuStateCollapsed');
  console.log('LocalStorage', sideBarState)

  if (sideBarState === 'true') {
    $('#sidebar').addClass('active');
  } else {
    console.log("Not True", sideBarState, sideBarState == true, sideBarState === true)
  }

  $('#sidebarCollapse').on('click', function () {
    $('#sidebar').toggleClass('active');
    if ($('#sidebar').hasClass('active')) {
      localStorage.setItem('SideBarMenuStateCollapsed', 'true');
    } else {
      localStorage.setItem('SideBarMenuStateCollapsed', undefined);
    }
  });
});
