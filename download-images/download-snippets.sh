# Debug command. Replace minions.html with the actual file name.
for minion in `cat minions.html`; do minionurl=$(echo $minion | cut -d "|" -f1); echo $minionurl; minionname=$(echo $minion | cut -d "|" -f2); echo $minionname; done
# Actual download command.
for minion in `cat minions.html`; do minionurl=$(echo $minion | cut -d "|" -f1); echo $minionurl; minionname=$(echo $minion | cut -d "|" -f2); echo $minionname; randomsleep=$(shuf -i 1-2 -n1); echo $randomsleep; sleep $randomsleep; wget $minionurl -O $minionname.png; done
