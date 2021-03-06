# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

# Write code here
def num_points_scored(players_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == players_name
       return player[:points]
      end 
    end 
  end 
end 
    
def shoe_size(players_name)
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if player[:player_name] == players_name
        return player[:shoe]
      end 
    end 
  end 
end 

def team_colors(team_name)
  game_hash.map do |team, info|
    if info[:team_name] == team_name
      return info[:colors]
    end 
  end 
end 

def team_names
   new_array = []
    game_hash.each do |team, info|
      new_array << info[:team_name]
    end
    new_array
 end 

def player_numbers(team_name)
  home_array = []
  
  game_hash.each do |team, team_info|
    team_info[:players].each do |player|
      if team_name == team_info[:team_name]
        home_array << player[:number]
      end 
    end 
  end 
  home_array
end 


def player_stats(players_name)
 stats = {}
 
   game_hash.each do |team, team_info|
    team_info[:players].each do |player_info|
      if players_name == player_info[:player_name]
      stats = player_info
     end 
    end 
   end 
   stats
end

def big_shoe_rebounds
  reb_player = nil 
  biggest_shoe = 0
  rebounds = 0
  
  game_hash.each do |team, team_info|
    team_info[:players].each do |player_info|
      if reb_player = nil || player_info[:shoe] > biggest_shoe
        reb_player = player_info[:player_name]
        biggest_shoe = player_info[:shoe]
        rebounds = player_info[:rebounds]
      end 
    end 
  end 
  rebounds
  
end 