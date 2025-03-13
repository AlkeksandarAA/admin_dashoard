async function optionComanies() {
    try {
        const response = await fetch("api/company/get/option");
        const companies = await response.json();
        return companies;
    } catch (error) {
        console.error("Error fetching companies:", error);
        return [];
    }
}

export async function updateUser(user) {
    const tables = document.querySelectorAll("table");
    tables.forEach((table) => table.remove());

    const form = document.createElement("form");
    form.id = "updateUserForm";

    const userIdInput = document.createElement("input");
    userIdInput.type = "hidden";
    userIdInput.name = "user_id";
    userIdInput.value = user.id;
    form.appendChild(userIdInput);

    const nameLabel = document.createElement("label");
    nameLabel.textContent = "Name:";
    nameLabel.setAttribute("for", "nameInput");

    const nameInput = document.createElement("input");
    nameInput.type = "text";
    nameInput.id = "nameInput";
    nameInput.name = "name";
    nameInput.value = user.name;

    const emailLabel = document.createElement("label");
    emailLabel.textContent = "Email:";
    emailLabel.setAttribute("for", "emailInput");

    const emailInput = document.createElement("input");
    emailInput.type = "email";
    emailInput.id = "emailInput";
    emailInput.name = "email";
    emailInput.value = user.email;

    const companyLabel = document.createElement("label");
    const companySelect = document.createElement("select");
    companyLabel.textContent = "Company:";
    companyLabel.setAttribute("for", "companySelect");
    companySelect.id = "companySelect";
    companySelect.name = "company";

    if (user.role_id === 3) {
        try {
            const companies = await optionComanies();
            companies.forEach((company) => {
                const option = document.createElement("option");
                option.value = company.id;
                option.textContent = company.name;
                companySelect.appendChild(option);
            });
        } catch (error) {
            console.error("Error fetching companies:", error);
        }
    }
    const submitButton = document.createElement("button");
    submitButton.type = "submit";
    submitButton.textContent = "Submit";

    form.appendChild(nameLabel);
    form.appendChild(nameInput);
    form.appendChild(document.createElement("br"));
    form.appendChild(emailLabel);
    form.appendChild(emailInput);
    form.appendChild(document.createElement("br"));
    if (user.role_id === 3) {
        form.appendChild(companyLabel);
        form.appendChild(companySelect);
        form.appendChild(document.createElement("br"));
    }
    form.appendChild(submitButton);

    const container = document.querySelector("#container");
    container.appendChild(form);

    form.addEventListener("submit", (event) => {
        event.preventDefault();

        const formData = new FormData(form);
        const _token = document.querySelector('meta[name="csrf-token"]');
        const userData = {
            user_id: formData.get("user_id"),
            name: formData.get("name"),
            email: formData.get("email"),
            company: formData.get("company"),
            _token: _token,
        };
        fetch("api/update/user", {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
                "X-CSRF-TOKEN": _token,
            },
            body: JSON.stringify(userData),
        })
            .then((response) => response.json())
            .then((data) => {
                console.log("User updated successfully:", data);
                // window.location.reload();
            })
            .catch((error) => {
                console.error("Error updating user:", error);
            });
    });
}
export async function deleteUser($user) {
    if (!confirm(`Are u sure u want to delete ${$user.id}`))
        try {
            const deleteUser = await fetch(`api/delete/${$user.name}`, {
                method: "DELETE",
            });

            if (!response.ok) {
                throw new error(`ERROR , STATUS ${response.STATUS}`);
            }
            const data = await response.json();
            console.log("User deleted:", data);
            location.reload();
        } catch (error) {
            console.error("Error deleting user:", error);
        }
}
