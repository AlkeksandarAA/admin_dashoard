import { allUsers } from "./allUsers.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";
import { allCompanies } from "./companies.js";

function removeTables() {
    const tables = document.querySelectorAll("table");
    tables.forEach((table) => table.remove());
}

export function showUsers() {
    const employeeListButton = document.querySelector("#employeeList");

    if (employeeListButton.dataset.listenerAdded) return;
    employeeListButton.dataset.listenerAdded = true;

    employeeListButton.addEventListener("click", async () => {
        document.querySelector("#box1").classList.add("hidden");
        document.querySelector("#box2").classList.add("hidden");
        removeTables();

        try {
            const htmlContent = await allUsers();
            document.querySelector("#container").innerHTML += htmlContent;
        } catch (error) {
            console.error("Error handling allUsers:", error);
        }
    });
}

export function home() {
    document.addEventListener("DOMContentLoaded", function () {
        document.querySelector("#home").addEventListener("click", () => {
            const box1 = document.querySelector("#box1");
            const box2 = document.querySelector("#box2");

            box1.classList.remove("hidden");
            box2.classList.remove("hidden");
            document.querySelector("table").remove();
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
        document.querySelector("#box1").classList.add("hidden");
        document.querySelector("#box2").classList.add("hidden");

        removeTables();
        try {
            const htmlContent = await allCompanies();
            document.querySelector("#container").innerHTML += htmlContent;
        } catch (error) {
            console.error("Error handling allUsers:", error);
        }
    });
}
