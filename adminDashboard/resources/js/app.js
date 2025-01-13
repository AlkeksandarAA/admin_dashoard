import "./bootstrap";
import { allUsers } from "./allUsers.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";

activeWO();
invoiceStatus();
allWorkers();

fetch("api/total/income")
    .then((response) => response.json())
    .then((data) => {
        const formattedIncome = new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
        }).format(data.totalPrice);
        const $total = document.createElement("p");
        $total.classList.add("text-green-500");
        $total.innerText = formattedIncome;

        document.querySelector("#income").appendChild($total);
    })
    .catch((error) => {
        console.error(error);
    });

fetch("api/used/materials")
    .then((response) => response.json())
    .then((data) => {
        const usedMaterials = document.createElement("p");

        usedMaterials.innerText = data.usedMaterials;

        document.querySelector("#usedMaterials").appendChild(usedMaterials);
    });
Promise.all([
    fetch("api/total/income").then((response) => response.json()),
    fetch("api/material/cost").then((response) => response.json()),
]).then(([incomeData, materialCostData]) => {
    const netIncome = incomeData.totalPrice - materialCostData.usedMaterialCost;
    const formattedIncome = new Intl.NumberFormat("en-US", {
        style: "currency",
        currency: "USD",
    }).format(netIncome);

    const netData = document.createElement("p");

    netData.innerText = formattedIncome;

    document.querySelector("#netIncome").appendChild(netData);

    if (netIncome > 0) {
        document.querySelector("#netIncome").classList.add("bg-green-100");
        netData.classList.add("text-green-500");
    } else {
        document.querySelector("#netIncome").classList.add("bg-red-200");
        netData.classList.add("text-red-500");
    }
});

fetch("api/unpaid/price")
    .then((response) => response.json())
    .then((data) => {
        const formattedIncome = new Intl.NumberFormat("en-US", {
            style: "currency",
            currency: "USD",
        }).format(data.totalUnpaid);

        const unpaidIncome = document.createElement("p");

        unpaidIncome.innerText = formattedIncome;

        document.querySelector("#unpaid").appendChild(unpaidIncome);
    });

document.querySelector("#employeeList").addEventListener("click", async () => {
    document.querySelector("#box1").classList.add("hidden");
    document.querySelector("#box2").classList.add("hidden");

    try {
        const htmlContent = await allUsers();
        document.querySelector("#container").innerHTML += htmlContent;
    } catch (error) {
        console.error("Error handling allUsers:", error);
    }
});
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
