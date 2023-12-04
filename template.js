const fs = require("fs");
const { join } = require("path");

fs.readFile(join(__dirname, "input"), "utf8", (err, data) => {
	if(err) {
		return console.log(err);
	}

	const lines = data.split("\n");
	if(lines[lines.length - 1] == "") lines.pop();


	
	console.log("Part 1: ");
	console.log("Part 2: ");
	
});