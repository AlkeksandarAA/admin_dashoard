import "./bootstrap";
import Chart from "chart.js/auto";

fetch("api/workers")
    .then((response) => response.json())
    .then((data) => {
        console.log(data);

        if (data && data.total_workers !== undefined) {
            const ctx = document.getElementById("chart1").getContext("2d");

            const chart = new Chart(ctx, {
                type: "bar",
                data: {
                    labels: ["Total Workers"],
                    datasets: [
                        {
                            label: "Total Employees",
                            data: [data.total_workers],
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
                        y: {
                            beginAtZero: true,
                        },
                    },
                },
            });
        } else {
            console.error("Data or total_workers is missing.");
        }
    });
