% Seyyedali Shohadaalhosseini - UMZ - 97122920012
function TossingPlay()
    clear;
    clc;
    % Next we're choosing the random player to start
    WhoisPlaying = randi([1 2], 1); 
    global scores; % Initializing global variable 
    global rounds; % Initializing global variable 
    scores = [0 0];  % The index == 1 is for p1 and the second is for Player 2
    rounds = [0 0];  % The index == 1 is for p1 and the second is for Player 2
    
    while (rounds(1) ~= 1000) && (rounds(2) ~= 1000) % Termination condition
        random_dice = play(WhoisPlaying);
        
        % Next - changing player
        if (random_dice ~= 6) % We only change player when the dice number is not 6
            if (WhoisPlaying == 1)
                WhoisPlaying = 2;
            else
                WhoisPlaying = 1;
            end
        end
    end
    
    % Next - Showing the output
    disp("Player 1 Statistics: ")
    fprintf("      Number of Plays = %d\n", rounds(1))
    fprintf("          Total Score = %d\n\n", scores(1))
    disp("Player 2 Statistics: ")
    fprintf("      Number of Plays = %d\n", rounds(2))
    fprintf("          Total Score = %d\n", scores(2))
end

function [random_dice] = play(WhoisPlaying) % This function return random_dice back
    % Next we're rolling the dices
    random_dice = randi([1 6], 1);
    
    % Increasing the number of dice rolling for our specific player
    global rounds;
    rounds(WhoisPlaying) = rounds(WhoisPlaying) + 1;
    
    % Increasing the score of the our specific player 
    global scores;
    scores(WhoisPlaying) = scores(WhoisPlaying) + random_dice;
end