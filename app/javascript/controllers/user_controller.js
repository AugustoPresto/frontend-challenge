import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["userProfileCard"]

  fetchUserdetails(event) {
    const userId = event.currentTarget.dataset.userId
    fetch(`/users/${userId}/details`)
      .then(response => response.json())
      .then(data => {
        this.updateUserProfileCard(data)
      })
  }

  updateUserProfileCard(data) {
    this.userProfileCardTarget.innerHTML `
      <div class="user-profile-card">
        <div class="details">
          <h2>${data.name}</h2>
          <p>${data.address}</p>
          <h3>Groups:</h3>
          <ul>
            ${data.groups.map(group => `<li>${group.name}</li>`).join('')}
          </ul>
        </div>
      </div>
    `
  }
}
