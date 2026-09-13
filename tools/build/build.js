export const DmMapsIncludeTarget = new Juke.Target({
  executes: async () => {
    // 1. Стандартный минимальный набор карт (не перегружает память CI)
    const folders = new Set([
      ...Juke.glob("_maps/outpost/**/*.dmm"),
      ...Juke.glob("_maps/templates/**/*.dmm"),
      ...Juke.glob("_maps/_mod_celadon/map_files/centcomm_ship.dmm"),
    ]);

    // 2. Точечно добавляем из git diff ТОЛЬКО те карты (.dmm), которые реально изменились в PR
    try {
      let gitDiff = "";
      try {
        gitDiff = execSync("git diff --name-only origin/beta-dev HEAD", { encoding: "utf-8" });
      } catch {
        gitDiff = execSync("git diff --name-only HEAD~1 HEAD", { encoding: "utf-8" });
      }

      const changedFiles = gitDiff.split("\n").filter(file => file.endsWith(".dmm"));

      for (const file of changedFiles) {
        if (fs.existsSync(file)) {
          folders.add(file);
          console.log(`[Smart Maps] Added modified map from PR: ${file}`);
        }
      }
    } else {
      console.log("[Smart Maps] Git diff skipped or failed, using base maps.");
    }

    const content =
      Array.from(folders)
        .map((file) => file.replace("_maps/", ""))
        .map((file) => `#include "${file}"`)
        .join("\n") + "\n";

    fs.writeFileSync("_maps/templates.dm", content);
  },
});
