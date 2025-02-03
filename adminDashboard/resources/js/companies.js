export async function allCompanies() {
    try {
        const response = await fetch("api/all/companies");
        const data = await response.json();

        const table = document.createElement("table");
        table.id = "companiesTable";
        table.classList.add("table-fixed", "m-auto", "w-5/6");

        // Create table header
        const headerRow = document.createElement("tr");
        const headers = [
            "Name",
            "Address",
            "Representative",
            "Invoices",
            "Actions",
        ];
        headers.forEach((headerText) => {
            const th = document.createElement("th");
            th.innerText = headerText;
            headerRow.appendChild(th);
        });
        table.appendChild(headerRow);

        // Create table rows
        data.forEach((company) => {
            const row = document.createElement("tr");

            const nameCell = document.createElement("td");
            nameCell.innerText = company.name;
            row.appendChild(nameCell);

            const addressCell = document.createElement("td");
            addressCell.innerText = company.address;
            row.appendChild(addressCell);

            const representativeCell = document.createElement("td");
            representativeCell.innerText =
                company.representative?.name || "N/A";
            row.appendChild(representativeCell);

            const invoicesCell = document.createElement("td");
            if (company.invoices && company.invoices.length > 0) {
                const totalPrice = company.invoices.reduce(
                    (sum, invoice) => sum + invoice.total_price,
                    0
                );
                invoicesCell.innerText = `Total: $${totalPrice}`;
            } else {
                invoicesCell.innerText = "No Invoices";
            }
            row.appendChild(invoicesCell);

            const actionsCell = document.createElement("td");

            const button = document.createElement("button");
            const button2 = document.createElement("button");
            const button3 = document.createElement("button");

            button.innerText = "Update";
            button2.innerText = "Delete";
            button3.innerText = "Promote";

            button.classList.add("bg-orange-500", "p-3", "mr-3");
            button2.classList.add("bg-red-500", "p-3", "mr-3");
            button3.classList.add("bg-green-500", "p-3");

            if (typeof user !== "undefined" && user.role_id !== 3) {
                actionsCell.appendChild(button);
                actionsCell.appendChild(button2);
                actionsCell.appendChild(button3);
            } else {
                actionsCell.appendChild(button);
                actionsCell.appendChild(button2);
            }

            row.appendChild(actionsCell);
            table.appendChild(row);
        });

        return table.outerHTML;
    } catch (error) {
        console.error("Error fetching companies:", error);
        return "<p>Error loading companies.</p>";
    }
}
