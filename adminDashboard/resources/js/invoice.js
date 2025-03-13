export function showInvoice(invoiceID) {
    fetch(`api/invoice/${invoiceID}`)
        .then((Response) => Response.json())
        .then((data) => console.log(data));
}
