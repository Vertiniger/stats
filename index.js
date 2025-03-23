const express = require("express");
const fs = require("fs");
const http = require('http').createServer(app),
const io = require('socket.io')(http),
const path = require("path");

const app = express();
let all_requests = 0, per_requests = 0;

require("events").EventEmitter.defaultMaxListeners = Infinity;

app.use(express.static(path.join(__dirname, "assets/")));

app.get("/attack", (req, res) => {
    all_requests++;
    per_requests++;
    res.sendStatus(403);
});

const getStats = () => {
    try {
        return JSON.parse(fs.readFileSync("stats.json", "utf8"));
    } catch (error) {
        return { max_requests: 0 }; // Default jika file tidak ditemukan
    }
};

const saveStats = (max_requests) => {
    try {
        fs.writeFileSync("stats.json", JSON.stringify({ max_requests }));
    } catch (error) {
        console.error("Gagal menyimpan stats:", error);
    }
};

setInterval(() => {
    const config = getStats();
    if (per_requests >= config.max_requests) {
        saveStats(per_requests);
    }
    per_requests = 0;
}, 1000);

setInterval(() => {
    all_requests = 0;
}, 1000 * 86400);

module.exports = app;
