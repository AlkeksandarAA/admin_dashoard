import "./bootstrap";
import { showUsers, home } from "./pages.js";
import { activeWO, invoiceStatus, allWorkers } from "./myCharts.js";
import {
    totalIncome,
    usedMaterials,
    netIncome,
    unpaidInvoice,
} from "./statistics.js";
import { allCompanies } from "./companies.js";
activeWO();
invoiceStatus();
allWorkers();
totalIncome();
usedMaterials();
netIncome();
unpaidInvoice();
showUsers();
home();
allCompanies();
