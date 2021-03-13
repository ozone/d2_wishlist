#!/bin/bash

OUTPUT_FILE="wishlist.txt"

echo "title: Pandapaxxy controller godrolls" > "${OUTPUT_FILE}"
echo "" >> "${OUTPUT_FILE}"

for file in \
	panda_arrivals_controller.txt \
	panda_battleground_controller.txt \
	panda_black_armory_picks.txt \
	panda_chosen_banana_osiris_controller.txt \
	panda_chosen_nightfall_etc_controller.txt \
	panda_chosen_return_controller.txt \
	panda_dawn_ritual.txt \
	panda_dawning_controller.txt \
	panda_dawning_hawkmoon_controller.txt \
	panda_dsc_controller.txt \
	panda_europa_controller.txt \
	panda_forsaken_pve_rolls.txt \
	panda_forsaken_pvp_rolls.txt \
	panda_missing_black_armory_pve.txt \
	panda_missing_black_armory_pvp.txt \
	panda_penumbra_pve.txt \
	panda_penumbra_pvp.txt \
	panda_pit_and_altar.txt \
	panda_returning_dawn_controller.txt \
	panda_salvation_pve.txt \
	panda_salvation_pvp.txt \
	panda_season_drifter_pve.txt \
	panda_season_drifter_pvp.txt \
	panda_season_hunt_banner_controller.txt \
	panda_season_hunt_controller.txt \
	panda_seraph_controller.txt \
	panda_shadowkeep_pve.txt \
	panda_shadowkeep_pvp.txt \
	panda_sundial_controller.txt \
	panda_trials_hunt_controller.txt \
	panda_trials_worthy_controller.txt \
	panda_worthy_factions_controller.txt \
	; do
	curl -- "https://raw.githubusercontent.com/48klocs/dim-wish-list-sources/master/PandaPaxxy/${file}" >> "${OUTPUT_FILE}"
done

