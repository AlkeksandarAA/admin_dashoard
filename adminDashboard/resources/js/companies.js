export async function allCompanies() {
    try {
        const response = await fetch("api/all/companies");
        const data = await response.json();
        const table = document.createElement("table");
        table.id = "companiesTable";
        table.style.borderCollapse = "collapse";
        table.style.width = "100%";

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
            header.style.color = "black";
            headerRow.appendChild(header);
        });
        table.appendChild(headerRow);

        data.data.forEach((company) => {
            const row = document.createElement("tr");

            const companyNameCell = document.createElement("td");
            companyNameCell.textContent = company.name;
            companyNameCell.style.border = "1px solid black";
            companyNameCell.style.padding = "8px";
            row.appendChild(companyNameCell);

            const addressCell = document.createElement("td");
            addressCell.textContent = company.address;
            addressCell.style.border = "1px solid black";
            addressCell.style.padding = "8px";
            row.appendChild(addressCell);

            const representativeCell = document.createElement("td");
            representativeCell.textContent = company.representative;
            representativeCell.style.border = "1px solid black";
            representativeCell.style.padding = "8px";
            row.appendChild(representativeCell);

            const invoiceCell = document.createElement("td");
            invoiceCell.textContent = company.invoices.join(", ");
            invoiceCell.style.border = "1px solid black";
            invoiceCell.style.padding = "8px";
            row.appendChild(invoiceCell);

            table.appendChild(row);
        });
        return table.outerHTML;
    } catch (error) {
        console.error("Error fetching companies:", error);
        return "<p>Error loading companies.</p>";
    }
}
