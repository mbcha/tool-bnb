function changeTabs() {
  const firstTab = document.querySelector('.tab-first');
  const secondTab = document.querySelector('.tab-second');
  const thirdTab = document.querySelector('.tab-third');
  const lastTab = document.querySelector('.tab-last');
  const userDetails = document.querySelector('.user-details');
  const userListings = document.querySelector('.user-my-listings');
  const userBookings = document.querySelector('.user-my-bookings');
  const userMessages = document.querySelector('.messages')
  const addForm = document.querySelector('.user-listings-form');
  const addButton = document.querySelector('.new-listing-btn');
  const cancelButton = document.querySelector('.cancel-new')


  if (firstTab) {

    // stays on the bookings tab if redirect was passed ending in #bookings
    $(document).ready(function () {
      if(window.location.href.indexOf("#bookings") > -1) {
        firstTab.classList.remove('active');
        userDetails.classList.add('hidden');
        secondTab.classList.remove('active');
        userListings.classList.add('hidden');
        thirdTab.classList.remove('active');
        userMessages.classList.add('hidden');
        lastTab.classList.add('active');
        userBookings.classList.remove('hidden');
        addForm.classList.add('hidden');
      }
    });

    // stays on the listings tab if redirect was passed ending in #listings
    $(document).ready(function () {
      if(window.location.href.indexOf("#listings") > -1) {
        firstTab.classList.remove('active');
        userDetails.classList.add('hidden');
        secondTab.classList.add('active');
        userListings.classList.remove('hidden');
        thirdTab.classList.remove('active');
        userMessages.classList.add('hidden');
        lastTab.classList.remove('active');
        userBookings.classList.add('hidden');
        addForm.classList.add('hidden');
      }
    });

    firstTab.addEventListener('click', (event) => {
      firstTab.classList.add('active');
      userDetails.classList.remove('hidden');
      secondTab.classList.remove('active');
      userListings.classList.add('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
    secondTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.add('active');
      userListings.classList.remove('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
    lastTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.remove('active');
      userListings.classList.add('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.add('active');
      userBookings.classList.remove('hidden');
      addForm.classList.add('hidden');

    });
    thirdTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.remove('active');
      userListings.classList.add('hidden');
      thirdTab.classList.add('active');
      userMessages.classList.remove('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
    addButton.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.add('active');
      if (!userListings.classList.contains('hidden')) {
        userListings.classList.toggle('hidden');
      }
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.toggle('hidden');
    });
    cancelButton.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.add('active');
      userListings.classList.remove('hidden');
      thirdTab.classList.remove('active');
      userMessages.classList.add('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
  }
};

export { changeTabs };

function openForms() {
  const editButton = document.querySelector('.edit-button');
  const bookButton = document.querySelector('.book-button');
  const bookingForm = document.querySelector('.book-form');
  const messageButton = document.querySelector('.message-button');
  const editForm = document.querySelector('.edit-form');
  const messageForm = document.querySelector('.new-message-form');
  const cancelButtonMessage = document.querySelector('.cancel-button-message');
  const cancelButtonEdit = document.querySelector('.cancel-button-edit');
  const cancelButtonBook = document.querySelector('.cancel-button-booking');
  const listingPhoto = document.querySelector('.listing-show-pic');

  if (editButton) {
    editButton.addEventListener('click', (event) => {
      editButton.classList.add('hidden');
      editForm.classList.remove('hidden');
      listingPhoto.classList.add('hidden');
    });
    cancelButtonEdit.addEventListener('click', (event) => {
      editButton.classList.remove('hidden');
      editForm.classList.add('hidden');
      listingPhoto.classList.remove('hidden');
    });
    // stays on the edit tab if redirect was passed ending in #edit
    $(document).ready(function () {
      if(window.location.href.indexOf("#edit") > -1) {
        editButton.classList.add('hidden');
        editForm.classList.remove('hidden');
        listingPhoto.classList.add('hidden');
      }
    });
  }

  if (bookButton) {
    bookButton.addEventListener('click', (event) => {
      bookButton.classList.add('hidden');
      bookingForm.classList.remove('hidden');
      listingPhoto.classList.add('hidden');
      messageForm.classList.add('hidden');
    });
    cancelButtonBook.addEventListener('click', (event) => {
      bookButton.classList.remove('hidden');
      bookingForm.classList.add('hidden');
      listingPhoto.classList.remove('hidden');
      messageForm.classList.add('hidden');
    });
    messageButton.addEventListener('click', (event) => {
      bookingForm.classList.add('hidden');
      listingPhoto.classList.add('hidden');
      messageButton.classList.add('hidden');
      messageForm.classList.remove('hidden');
    });
    cancelButtonMessage.addEventListener('click', (event) => {
      bookButton.classList.remove('hidden');
      bookingForm.classList.add('hidden');
      listingPhoto.classList.remove('hidden');
      messageForm.classList.add('hidden');
      messageButton.classList.remove('hidden');
    });
  }
}

export { openForms };

// function changeMessageStatus() {
//   const markAsRead = document.querySelector('.mark-as-read');

//   if (markAsRead) {
//     markAsRead.addEventListener('click', (event) => {

//     })
//   }
// };

// export { changeMessageStatus };


