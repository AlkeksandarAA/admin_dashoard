import { showInvoice } from "./invoice";

export async function allCompanies() {
    try {
        const response = await fetch("api/all/companies");
        const data = await response.json();
        const table = document.createElement("table");
        table.id = "companiesTable";
        table.style.borderCollapse = "collapse";
        table.style.width = "100%";

        // Create table headers
        const headerRow = document.createElement("tr");
        const headers = [
            "Company Name",
            "Address",
            "Representative",
            "Invoice",
        ];

        headers.forEach((headerText) => {
            const header = document.createElement("th");
            header.textContent = headerText;
            header.style.border = "1px solid black";
            header.style.padding = "8px";
            header.style.backgroundColor = "#f2f2f2";
            header.style.color = "blue";
            headerRow.appendChild(header);
        });
        table.appendChild(headerRow);

        data.data.forEach((company) => {
            const row = document.createElement("tr");

    
            const nameCell = document.createElement("td");
            nameCell.textContent = company.name;
            nameCell.style.border = "1px solid black";
            nameCell.style.padding = "8px";
            row.appendChild(nameCell);

            const addressCell = document.createElement("td");
            addressCell.textContent = company.address;
            addressCell.style.border = "1px solid black";
            addressCell.style.padding = "8px";
            row.appendChild(addressCell);

            const repCell = document.createElement("td");
            repCell.textContent = company.representative;
            repCell.style.border = "1px solid black";
            repCell.style.padding = "8px";
            row.appendChild(repCell);

            const invoiceCell = document.createElement("td");
            company.invoices.forEach((invoiceId) => {
                const button = document.createElement("button");
                button.textContent = invoiceId;
                button.style.marginRight = "5px";
                button.addEventListener("click", () => showInvoice(invoiceId));
                invoiceCell.appendChild(button);
            });
            invoiceCell.style.border = "1px solid black";
            invoiceCell.style.padding = "8px";
            row.appendChild(invoiceCell);

            table.appendChild(row);
        });

        return table;
    } catch (error) {
        console.error("Error:", error);
        const errorElement = document.createElement("p");
        errorElement.textContent = "Failed to load companies.";
        return errorElement;
    }
}
