# Tree Survey Summary

trees = [
    {"species": "Oak", "count": 15},
    {"species": "Birch", "count": 8},
    {"species": "Rowan", "count": 5},
    {"species": "Sycamore", "count": 2},
    {"species": "Willow", "count": 6}
]

def get_tree_rarity(count):
    if count >= 10:
        return "Dominant"
    elif count >= 5:
        return "Common"
    else:
        return "Rare"

total = 0
results = []
results.append("Tree Survey Summary\n")

for tree in trees:
    species = tree["species"]
    count = tree["count"]
    rarity = get_tree_rarity(count)
    total += count
    line = f"{species} - Count: {count} - Status: {rarity}"
    print(line)
    results.append(line)

results.append(f"\nTotal Trees Recorded: {total}")

with open("tree_survey_summary.txt", "w") as output:
    output.write("\n".join(results))

print("\n✅ Summary saved to 'tree_survey_summary.txt'")

