export const DmMapsIncludeTarget = new Juke.Target({
  parameters: [DefineParameter],
  executes: async ({ get }) => {
    const folders = new Set([
      ...Juke.glob("_maps/outpost/**/*.dmm"),
      ...Juke.glob("_maps/templates/**/*.dmm"),
      ...Juke.glob("_maps/_mod_celadon/map_files/centcomm_ship.dmm"),
    ]);

    const isAllMaps = get(DefineParameter).includes("ALL_MAPS");

    if (isAllMaps) {
      // Если форсирован ALL_MAPS, загружаем весь контент мода целиком (для полных тестов)
      console.log("[Smart Maps] ALL_MAPS detected, loading all mod files...");
      Juke.glob("_maps/_mod_celadon/**/*.dmm").forEach(file => folders.add(file));
    } else {
      // Иначе в обычном режиме берем только то, что реально изменилось в PR
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
      } catch (e) {
        console.log("[Smart Maps] Could not fetch git diff, using base maps only.");
      }
    }

    const content =
      Array.from(folders)
        .map((file) => file.replace("_maps/", ""))
        .map((file) => `#include "${file}"`)
        .join("\n") + "\n";

    fs.writeFileSync("_maps/templates.dm", content);
  },
});
