const express = require("express");
const fs = require("fs");
const path = require("path");

const app = express();
let all_requests = 0, per_requests = 0;

// Event Listener agar tidak limit
require("events").EventEmitter.defaultMaxListeners = Infinity;

// Pastikan folder "assets/" dapat diakses
app.use(express.static(path.join(__dirname, "assets/")));

// Endpoint Attack
app.get("/attack", (req, res) => {
    all_requests++;
    per_requests++;
    res.sendStatus(403);
});

// Fungsi untuk membaca & menulis stats.json
const getStats = () => {
    try {
        return JSON.parse(fs.readFileSync("stats.json", "utf8"));
    } catch (error) {
        return { max_requests: 0 }; // Jika error, gunakan default
    }
};

const saveStats = (max_requests) => {
    fs.writeFileSync("stats.json", JSON.stringify({ max_requests }));
};

// Interval untuk reset request per detik
setInterval(() => {
    const config = getStats();
    if (per_requests >= config.max_requests) {
        saveStats(per_requests);
    }
    per_requests = 0;
}, 1000);

// Reset semua request setiap hari
setInterval(() => {
    all_requests = 0;
}, 1000 * 86400);

// **Gunakan module.exports agar bisa dijalankan di Vercel**
module.exports = app;
