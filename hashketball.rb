require "pry"

def game_hash 
	gamehash = {
		:home => {
			:team_name => "Brooklyn Nets",
			:colors => ["Black", "White"],
			:players => {
				"Alan Anderson" => {
					:number=>0,
					:shoe=>16,
					:points=>22,
					:rebounds=>12,
					:assists=>12,
					:steals=>3,
					:blocks=>1,
					:slam_dunks=>1
				},
				"Reggie Evans" =>{
					:number=>30,
					:shoe=>14,
					:points=>12,
					:rebounds=>12,
					:assists=>12,
					:steals=>12,
					:blocks=>12,
					:slam_dunks=>7
				},
				"Brook Lopez"=>{
					:number=>11,
					:shoe=>17,
					:points=>17,
					:rebounds=>19,
					:assists=>10,
					:steals=>3,
					:blocks=>1,
					:slam_dunks=>15
				},
				"Mason Plumlee"=>{
					:number=>1,
					:shoe=>19,
					:points=>26,
					:rebounds=>12,
					:assists=>6,
					:steals=>3,
					:blocks=>8,
					:slam_dunks=>5
				},
				"Jason Terry"=>{
					:number=>31,
					:shoe=>15,
					:points=>19,
					:rebounds=>2,
					:assists=>2,
					:steals=>4,
					:blocks=>11,
					:slam_dunks=>1
				}

			}

			},
		:away => {
			:team_name => "Charlotte Hornets",
			:colors => ["Turquoise", "Purple"],
			:players =>{
				"Jeff Adrien" =>{
					:number=>4,
					:shoe=>18,
					:points=>10,
					:rebounds=>1,
					:assists=>1,
					:steals=>2,
					:blocks=>7,
					:slam_dunks=>2
				},
				"Bismak Biyombo" =>{
					:number=>0,
					:shoe=>16,
					:points=>12,
					:rebounds=>4,
					:assists=>7,
					:steals=>7,
					:blocks=>15,
					:slam_dunks=>10
				},
				"DeSagna Diop" =>{
					:number=>2,
					:shoe=>14,
					:points=>24,
					:rebounds=>12,
					:assists=>12,
					:steals=>4,
					:blocks=>5,
					:slam_dunks=>5
				},
				"Ben Gordon"=>{
					:number=>8,
					:shoe=>15,
					:points=>33,
					:rebounds=>3,
					:assists=>2,
					:steals=>1,
					:blocks=>1,
					:slam_dunks=>0
				},
				"Brendan Haywood"=>{
					:number=>33,
					:shoe=>15,
					:points=>6,
					:rebounds=>12,
					:assists=>12,
					:steals=>22,
					:blocks=>5,
					:slam_dunks=>12
				}

			}
			}

	}
end

def num_points_scored (player_name)
	team_info = game_hash
	points_scored = 0
	team_info.each do |place, team_data|
		if team_data[:players][player_name]
			points_scored = team_data[:players][player_name][:points]
		end
	end
	points_scored
end

def shoe_size (player_name)
	team_info = game_hash
	shoe_size = 0
	team_info.each do |place, team_data|
		if team_data[:players][player_name]
			shoe_size = team_data[:players][player_name][:shoe]
		end
	end
	shoe_size
end

def team_colors (team)
	team_info = game_hash
	colors = []
	team_info.each do |place, team_data|
		if team_data[:team_name][team]
			colors = team_data[:colors]
		end
	end
	colors
end

def team_names
	team_info = game_hash
	teams = []
	team_info.each do |place, team_data|
		teams << team_data[:team_name]
	end
	teams
end

def player_numbers (team)
	team_info = game_hash
	number_array = []
	team_info.each do |place, team_data|
		if team_data[:team_name] == team
			team_data[:players].each do |key, value|
				number_array << value[:number]
			end
		end
	end
	number_array
end

def player_stats (player_name)
	team_info = game_hash
	player_stats = {}
	team_info.each do |place, team_data|
		if team_data[:players][player_name]
			player_stats = team_data[:players][player_name]
		end
	end
	player_stats
end
def big_shoe_rebounds
	big_shoe = 0
	rebound_num = 0
	game_hash.each do |team, team_hash|
		team_hash[:players].each do |player, player_hash|
		if player_hash[:shoe] > big_shoe
			big_shoe = player_hash[:shoe]
			rebound_num = player_hash[:rebounds]
			end
		end
	end
	rebound_num
end

def most_points_scored
	#Which player has the most points? 
	most_points = 0
	top_player = ""
	game_hash.each do |team, team_hash|
		team_hash[:players].each do |player, player_hash|
		if player_hash[:points] > most_points
			most_points = player_hash[:points]
			top_player = player
			end
		end
	end
	top_player
end

#def winning_team
#	# Which team has the most points? 
#	most_points = 0
##	team_best = 0
#	top_team = ""	
#	game_hash.each do |team, team_hash|
#		team_hash[:players].each do |player, player_hash|
#			team_total = team_total + player_hash[:points]
#				end
#			team_best = team_total
#			top_team = team_hash[:team_name]
#
#			end
#		end
#	
#	top_team
#end













