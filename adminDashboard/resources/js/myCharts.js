import Chart from "chart.js/auto";

export function allWorkers() {
    fetch("api/workers")
        .then((response) => response.json())
        .then((data) => {
            if (data && data.total_workers !== undefined) {
                const ctx = document.getElementById("chart1").getContext("2d");

                const chart = new Chart(ctx, {
                    type: "bar",
                    data: {
                        labels: [
                            "Total Workers",
                            "Managers",
                            "Representatives",
                        ],
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
}

export function invoiceStatus() {
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
}

export function activeWO() {
    fetch("api/active/workorders")
        .then((response) => response.json())
        .then((data) => {
            const ctx = document.getElementById("chart3").getContext("2d");

            new Chart(ctx, {
                type: "line",
                data: {
                    labels: data.months,
                    datasets: [
                        {
                            label: "Work orders",
                            data: data.totals,
                            backgroundColor: "rgba(192, 75, 75, 0.2)",
                            borderColor: "rgb(192, 75, 75)",
                            borderWidth: 1,
                            fill: true,
                        },
                    ],
                },
                options: {
                    responsive: true,
                    scales: {
                        x: {
                            title: {
                                display: true,
                                text: "Months",
                            },
                        },
                        y: {
                            beginAtZero: true,
                            title: {
                                display: true,
                                text: "Created work orders",
                            },
                        },
                    },
                },
            });
        });
}
