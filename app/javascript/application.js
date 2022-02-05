// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import Rails from "@rails/ujs";

Rails.start();

// Close alert button
const notifications = document.querySelectorAll('.notification .delete')
if (notifications.length > 0) {
  notifications.forEach((notification) => {
    notification.addEventListener('click', (n) => {
      notification.parentNode.style.display = 'none'
    });
  });
}
