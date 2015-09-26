launchagents_dir="${HOME}/Library/LaunchAgents"
mkdir -p "${launchagents_dir}"

for plist_file in "${HOME}/Desktop/files/launchd_plists"/*; do
  plist_name=$(basename "${plist_file}")

  mv "${plist_file}" "${launchagents_dir}"
  launchctl load -w "${launchagents_dir}/${plist_name}"
done
