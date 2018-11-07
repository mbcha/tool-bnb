function changeTabs() {
  const firstTab = document.querySelector('.tab-first');
  const secondTab = document.querySelector('.tab-second');
  const lastTab = document.querySelector('.tab-last');
  const userDetails = document.querySelector('.user-details');
  const userListings = document.querySelector('.user-my-listings');
  const userBookings = document.querySelector('.user-my-bookings');
  const addForm = document.querySelector('.user-listings-form');
  const addButton = document.querySelector('.new-listing-btn');

  if (firstTab) {
    firstTab.addEventListener('click', (event) => {
      firstTab.classList.add('active');
      userDetails.classList.remove('hidden');
      secondTab.classList.remove('active');
      userListings.classList.add('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
    secondTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.add('active');
      userListings.classList.remove('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.add('hidden');

    });
    lastTab.addEventListener('click', (event) => {
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.remove('active');
      userListings.classList.add('hidden');
      lastTab.classList.add('active');
      userBookings.classList.remove('hidden');
      addForm.classList.add('hidden');

    });
    addButton.addEventListener('click', (event) => {
      if (addButton.innerHTML == "New Listing") {
        addButton.innerHTML = "Back to list";
      } else {
        addButton.innerHTML = "New Listing";
      }
      firstTab.classList.remove('active');
      userDetails.classList.add('hidden');
      secondTab.classList.add('active');
      userListings.classList.toggle('hidden');
      lastTab.classList.remove('active');
      userBookings.classList.add('hidden');
      addForm.classList.toggle('hidden');
    });
  }
};

export { changeTabs };

function openForms() {
  const editButton = document.querySelector('.edit-button');
  const bookButton = document.querySelector('.book-button');
  const bookingForm = document.querySelector('.book-form');
  const editForm = document.querySelector('.edit-form');
  const cancelButtonEdit = document.querySelector('.cancel-button-edit');
  const cancelButtonBook = document.querySelector('.cancel-button-booking');

  if (editButton) {
    editButton.addEventListener('click', (event) => {
      editButton.classList.add('hidden');
      editForm.classList.remove('hidden');
    });
    cancelButtonEdit.addEventListener('click', (event) => {
      editButton.classList.remove('hidden');
      editForm.classList.add('hidden');
    });
  }

  if (bookButton) {
    bookButton.addEventListener('click', (event) => {
      bookButton.classList.add('hidden');
      bookingForm.classList.remove('hidden');
    });
    cancelButtonBook.addEventListener('click', (event) => {
      bookButton.classList.remove('hidden');
      bookingForm.classList.add('hidden');
    });
  }
}

export { openForms };
