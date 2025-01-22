import { allUsers } from "./allUsers.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";

export function showUsers() {
    document
        .querySelector("#employeeList")
        .addEventListener("click", async () => {
            document.querySelector("#box1").classList.add("hidden");
            document.querySelector("#box2").classList.add("hidden");

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
            const usersTable = document.querySelector("#usersTable");
            usersTable.remove();

            activeWO();
            invoiceStatus();
            allWorkers();
        });
    });
}
