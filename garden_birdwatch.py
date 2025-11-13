# UK Garden Birdwatching Summary

observations = [
    {"species": "Blue Tit", "count": 14},
    {"species": "House Sparrow", "count": 22},
    {"species": "Robin", "count": 5},
    {"species": "Woodpigeon", "count": 11},
    {"species": "Great Tit", "count": 5},
    {"species": "Goldfinch", "count": 1},
    {"species": "Little Egret", "count": 1},
    {"species": "Blackbird", "count": 2},
    {"species": "Chaffinch", "count": 2},
    {"species": "Nuthatch", "count": 1},
    {"species": "Dunnock", "count": 2}
]

def get_abundance(count):
    if count >= 10:
        return "Very Common"
    elif count >= 5:
        return "Common"
    elif count >= 2:
        return "Occasional"
    else:
        return "Rare"

total = 0
most = max(observations, key=lambda x: x['count'])
least = min(observations, key=lambda x: x['count'])

print("Birdwatching Summary – UK Garden Birds\n")

for obs in observations:
    species = obs["species"]
    count = obs["count"]
    abundance = get_abundance(count)
    total += count
    print(f"{species} - Count: {count} - Abundance: {abundance}")

print(f"\nTotal Birds Observed: {total}")
print(f"Most Common: {most['species']} ({most['count']})")
print(f"Least Common: {least['species']} ({least['count']})")
