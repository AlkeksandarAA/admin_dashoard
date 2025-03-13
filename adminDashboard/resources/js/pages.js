import { allUsers } from "./allUsers.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";
import { allCompanies } from "./companies.js";

export function hideHomeBoxes() {
    const box = document.querySelector("#box1");
    const box2 = document.querySelector("#box2");
    if (box && box2) {
        box.classList.add("hidden");
        box2.classList.add("hidden");
    }
}

export function showHomeBoxes() {
    const box = document.querySelector("#box1");
    const box2 = document.querySelector("#box2");
    if (box && box2) {
        box.classList.remove("hidden");
        box2.classList.remove("hidden");
    }
}

export function removeTables() {
    const tables = document.querySelectorAll("table");
    tables.forEach((table) => table.remove());
}

export function clearForm() {
    const from = document.querySelector("form");
    if (from) {
        from.remove();
    }
}

export function showUsers() {
    const employeeListButton = document.querySelector("#employeeList");

    if (employeeListButton.dataset.listenerAdded) return;
    employeeListButton.dataset.listenerAdded = true;

    employeeListButton.addEventListener("click", async () => {
        hideHomeBoxes();
        removeTables();
        clearForm();

        try {
            const table = await allUsers();
            document.querySelector("#container").appendChild(table);
        } catch (error) {
            console.error("Error handling allUsers:", error);
        }
    });
}

export function home() {
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelector("#home").addEventListener("click", () => {
            clearForm();
            showHomeBoxes();
            removeTables();
            activeWO();
            invoiceStatus();
            allWorkers();
        });
    });
}
export function showCompanies() {
    const companiesListButton = document.querySelector("#companiesList");

    if (companiesListButton.dataset.listenerAdded) return;
    companiesListButton.dataset.listenerAdded = true;

    companiesListButton.addEventListener("click", async () => {
        hideHomeBoxes();
        removeTables();
        clearForm();
        try {
            const htmlContent = await allCompanies();
            document.querySelector("#container").appendChild(htmlContent);
        } catch (error) {
            console.error("Error handling allUsers:", error);
        }
    });
}
