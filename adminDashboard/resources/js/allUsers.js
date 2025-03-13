import { updateUser, deleteUser } from "./buttons";

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
            console.log(user);
            gid;
            const updateButton = document.createElement("button");
            const deleteButton = document.createElement("button");
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

            updateButton.innerText = "Update";
            deleteButton.innerText = "Delete";
            button3.innerText = "Promote";

            updateButton.classList.add("bg-orange-500", "p-3", "mr-3");
            deleteButton.classList.add("bg-red-500", "p-3", "mr-3");
            button3.classList.add("bg-green-500", "p-3");

            if (user.role_id != 3) {
                actionsCell.appendChild(updateButton);
                actionsCell.appendChild(deleteButton);
                actionsCell.appendChild(button3);
            } else {
                actionsCell.appendChild(updateButton);
                actionsCell.appendChild(deleteButton);
            }
            row.appendChild(actionsCell);

            table.appendChild(row);

            updateButton.addEventListener("click", () => {
                console.log("Update button clicked for user:", user);
                updateUser(user);
            });
            deleteButton.addEventListener("click", () => {
                deleteUser(user);
            });
        });

        return table;
    } catch (error) {
        console.log("Error:", error);
        return "";
    }
}
