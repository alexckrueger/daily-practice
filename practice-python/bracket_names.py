# Upper Bracket Quarter-Finals = > Upper Quarters
# Upper Bracket Semi-Finals = > Upper Semis
# Upper Bracket Final = > Upper Final
# Lower Bracket Quarter-Finals = > Lower Quarters
# Lower Bracket Semi-Finals = > Lower Semis
# Lower Bracket Final = > Lower Final

def bracket_names(round):
    correct_names = {"Upper Bracket Quarter-Finals": "Upper Quarters", "Upper Bracket Semi-Finals": "Upper Semis", "Upper Bracket Final": "Upper Final",
                     "Lower Bracket Quarter-Finals": "Lower Quarters", "Lower Bracket Semi-Finals": "Lower Semis", "Lower Bracket Final": "Lower Final"}
    if round in correct_names:
        output = correct_names[round]
    else:
        output = round

    return output


rounds = ["Upper Bracket Quarter-Finals", "Upper Bracket Semi-Finals", "Upper Bracket Final",
          "Lower Bracket Quarter-Finals", "Lower Bracket Semi-Finals", "Lower Bracket Final", "Grand Finals"]

correct_rounds = map(bracket_names, rounds)
print(list(correct_rounds))
