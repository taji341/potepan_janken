 def janken
    $line = "--------------------------------"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_hand = gets.to_i
    puts "ホイ！"
    puts $line

    program_hand = rand(3)
    

    jankens = ["グー", "チョキ", "パー"]
    

    puts "あなたの手:#{jankens[player_hand]}, わたしの手:#{jankens[program_hand]}"

    if player_hand == program_hand
      puts "あいこで"
      return true
    elsif (player_hand == 0 && program_hand == 1) || (player_hand == 1 && program_hand == 2) || (player_hand == 2 && program_hand == 0)
      $result = "win"
      atti
    else
      $result = "lose"
      atti
    end
 end
  
  def atti
    puts "あっち向いてー"
    puts "0(グー)1(チョキ)2(パー)3(戦わない)"
    player_direction = gets.to_i
    puts "ホイ！"
    puts $line
      
    program_direction = rand(5)
    direction = ["上","右","下","左"]
    puts "あなた:#{direction[player_direction]}, わたし:#{direction[program_direction]}"
      
    if (player_direction == program_direction && $result == "win") 
      puts "あなたの勝ちです"
      return false
    elsif (player_direction == program_direction && $result == "lose")
      puts "あなたの負けです"
      return false
    else
      puts "じゃんけん..."
      return true
    end
        
        
  end

  next_game = true

  puts "じゃんけん..."

  while next_game do
    next_game = janken
  end