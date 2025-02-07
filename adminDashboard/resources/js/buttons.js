function optionComanies() {
    fetch();
}

function updateUser() {
    const tables = document.querySelectorAll("table");
    tables.forEach((table) => table.remove());

    const form = document.createElement("form");
    form.id = "updateUserForm";

    const nameLabel = document.createElement("label");
    nameLabel.textContent = "Name:";
    nameLabel.setAttribute("for", "nameInput");

    const nameInput = document.createElement("input");
    nameInput.type = "text";
    nameInput.id = "nameInput";
    nameInput.name = "name";
    nameInput.required = true;

    const emailLabel = document.createElement("label");
    emailLabel.textContent = "Email:";
    emailLabel.setAttribute("for", "emailInput");

    const emailInput = document.createElement("input");
    emailInput.type = "email";
    emailInput.id = "emailInput";
    emailInput.name = "email";
    emailInput.required = true;

    const companyLabel = document.createElement("label");
    companyLabel.textContent = "Company:";
    companyLabel.setAttribute("for", "companySelect");

    const companySelect = document.createElement("select");
    companySelect.id = "companySelect";
    companySelect.name = "company";

    allCompanies.forEach((company) => {
        const option = document.createElement("option");
        option.value = company.id;
        option.textContent = company.name;
        companySelect.appendChild(option);
    });

    const submitButton = document.createElement("button");
    submitButton.type = "submit";
    submitButton.textContent = "Submit";

    form.appendChild(nameLabel);
    form.appendChild(nameInput);
    form.appendChild(document.createElement("br")); // Line break
    form.appendChild(emailLabel);
    form.appendChild(emailInput);
    form.appendChild(document.createElement("br")); // Line break
    form.appendChild(companyLabel);
    form.appendChild(companySelect);
    form.appendChild(document.createElement("br")); // Line break
    form.appendChild(submitButton);

    // Append the form to a container (e.g., #container)
    const container = document.querySelector("#container");
    container.innerHTML = ""; // Clear the container
    container.appendChild(form);

    // Add form submission handler
    form.addEventListener("submit", (event) => {
        event.preventDefault(); // Prevent the form from submitting

        // Get form data
        const formData = new FormData(form);
        const name = formData.get("name");
        const email = formData.get("email");
        const companyId = formData.get("company");

        // Log the form data (or send it to an API)
        console.log("Name:", name);
        console.log("Email:", email);
        console.log("Company ID:", companyId);

        // You can add further logic here (e.g., send data to an API)
    });
}
