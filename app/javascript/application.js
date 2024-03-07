// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "@popperjs/core";
import "bootstrap";

// Assuming your start_date and end_date fields have IDs 'start_date' and 'end_date'
// and you have a span with the ID 'total_price' to display the result

// document
//   .getElementById("start_date")
//   .addEventListener("change", calculateTotalPrice);
// document
//   .getElementById("end_date")
//   .addEventListener("change", calculateTotalPrice);

// const calculateTotalPrice = () => {
//   const startDate = new Date(document.getElementById("start_date").value);
//   const endDate = new Date(document.getElementById("end_date").value);
//   const pricePerDay = animal.price;

//   if (startDate && endDate) {
//     const timeDifference = Math.abs(endDate.getTime() - startDate.getTime());
//     const numberOfDays = Math.ceil(timeDifference / (1000 * 3600 * 24));
//     const totalPrice = numberOfDays * pricePerDay;

//     document.getElementById("total_price").innerText =
//       "Total Price: " + totalPrice;
//   }
// };
