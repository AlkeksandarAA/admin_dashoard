import "./bootstrap";
import { showUsers, home, showCompanies } from "./pages.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";
import {
    totalIncome,
    usedMaterials,
    netIncome,
    unpaidInvoice,
} from "./statistics.js";

activeWO();
invoiceStatus();
allWorkers();
totalIncome();
usedMaterials();
netIncome();
unpaidInvoice();
showUsers();
home();
showCompanies();
