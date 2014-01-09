
smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}
 

class Blender

  def initialize(ingredients, power_button=false)    #power button default is off
    @smoothie_ingredients = ingredients      
    @power_button=power_button
  end

  def blend(sample_ingredients)
    if @power_button   #if power button is on
      if sample_ingredients  #and if we want 3 ingredients
        smoothie_step0 = @smoothie_ingredients.keys.sample(3)   #making a sample of 3 out of random ingredients
      else  #if we don't want three ingredients
        smoothie_step0 = @smoothie_ingredients.keys        #making a smoothie of all ingredients
      end

      smoothie_step1 = smoothie_step0.join.delete " "       #either way, you do these steps
      smoothie_step2 = smoothie_step1.split("")
      smoothie_step3 = smoothie_step2.shuffle
      smoothie_step4 = smoothie_step3.join
    else
      nil      #the blender was off, so nothing happens 
    end
  end

  def power_on(turn_on)    #turning on the blender
    @power_button = turn_on
  end

end

my_blender = Blender.new(smoothie_ingredients)    #asking for user input
puts "Turn first blenders on? (y, n)"
res = gets.chomp.downcase

if res == "y"      #turns on blender
  my_blender.power_on(true)
end

if blended = my_blender.blend(true)  #calls blend
  puts blended
end