export async function allUsers() {
    try {
        const response = await fetch("api/all/users");
        const data = await response.json();

        const table = document.createElement("table");
        table.id = "usersTable";

        const headerRow = document.createElement("tr");

        const headers = ["Name", "Position", "Email", "Actions"];
        headers.forEach((headerText) => {
            const th = document.createElement("th");
            th.innerText = headerText;
            headerRow.appendChild(th);
        });

        table.appendChild(headerRow);

        table.classList.add("table-fixed", "m-auto", "w-5/6");

        data.users.forEach((user) => {
            const button = document.createElement("button");
            button.id = "updateUser" + user.id;
            const button2 = document.createElement("button");
            const button3 = document.createElement("button");

            const row = document.createElement("tr");

            const nameCell = document.createElement("td");
            nameCell.innerText = user.name;
            row.appendChild(nameCell);

            const positionCell = document.createElement("td");
            positionCell.innerText = user.postion.position;
            row.appendChild(positionCell);

            const emailCell = document.createElement("td");
            emailCell.innerText = user.email;
            row.appendChild(emailCell);

            const actionsCell = document.createElement("td");

            button.innerText = "Update";
            button2.innerText = "Delete";
            button3.innerText = "Promote";

            button.classList.add("bg-orange-500", "p-3", "mr-3");
            button2.classList.add("bg-red-500", "p-3", "mr-3");
            button3.classList.add("bg-green-500", "p-3");

            if (user.role_id != 3) {
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
        console.log("Error:", error);
        return "";
    }
}
