import "./bootstrap";
import Chart from "chart.js/auto";

fetch("api/workers")
    .then((response) => response.json())
    .then((data) => {
        if (data && data.total_workers !== undefined) {
            const ctx = document.getElementById("chart1").getContext("2d");

            const chart = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["Total Workers", "Managers", "Representatives"],
                    datasets: [
                        {
                            label: "Total Employees",
                            data: [
                                data.total_workers,
                                data.manegers,
                                data.representatives,
                            ],
                            backgroundColor: "rgba(75, 192, 192, 0.2)",
                            borderColor: "rgba(75, 192, 192, 1)",
                            borderWidth: 1,
                        },
                    ],
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            ticks: {
                                color: "black",
                            },
                        },
                        y: {
                            beginAtZero: true,
                            ticks: {
                                color: "black", // Label color for y-axis
                            },
                        },
                    },
                },
            });
        } else {
            console.error("Data or total_workers is missing.");
        }
    });

fetch("api/invoice/status")
    .then((response) => response.json())
    .then((data) => {
        if (data && data.paid !== undefined && data.unpaid !== undefined) {
            const ctx = document.getElementById("chart2").getContext("2d");

            new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["Status of invoice"],
                    datasets: [
                        {
                            label: "Unpaid",
                            fill: true,
                            data: [data.unpaid.length],
                            backgroundColor: "rgba(255, 99, 132, 0.2)",
                            borderColor: "rgba(255, 99, 132, 1)",

                            borderWidth: 1,
                        },
                        {
                            label: "Paid",
                            fill: true,
                            data: [data.paid.length],
                            backgroundColor: "rgba(75, 192, 192, 0.2)",
                            borderColor: "rgba(75, 192, 192, 1)",
                            borderWidth: 1,
                        },
                    ],
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        x: {
                            grid: {
                                drawOnChartArea: true,
                                fullSize: true,
                                align: "center",
                                color: "rgba(200, 200, 200, 0.8)",
                            },
                            ticks: {
                                color: "black",
                            },
                        },
                        y: {
                            grid: {
                                drawOnChartArea: true,
                                color: "rgba(200, 200, 200, 0.8)",
                            },
                            beginAtZero: true,
                            ticks: {
                                color: "black",
                            },
                        },
                    },
                },
            });
        } else {
            console.error(
                "Data or one of the fields (paid, unpaid) is missing."
            );
        }
    })
    .catch((error) => {
        console.error("Error fetching invoice status data:", error);
    });

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

    if (netData > 0) {
        document.querySelector("#netIncome").classList.add("bg-green-100");
        netData.classList.add("text-green-500");
    } else {
        document.querySelector("#netIncome").classList.add("bg-red-100");
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
